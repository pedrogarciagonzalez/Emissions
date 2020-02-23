clc
close all

%inputs
tau = 12;
ch4_tchange2005 = -0.012;

fid = fopen('input','r');
data = fscanf(fid,'%g %g %g %g %g', [5,81]);
fclose(fid);

data = data';
year = data(:,1);
ch4_ppbv = data(:,2);
nox_em = data(:,3)*10^6;
nox_em_1per = data(:,4)*10^6;
nox_em_const = data(:,5)*10^6;
ch4_tchange = ch4_tchange2005/nox_em(66)*nox_em;
ch4_tchange_1per = ch4_tchange2005/nox_em_1per(66)*nox_em_1per;
ch4_tchange_const = ch4_tchange2005/nox_em_const(66)*nox_em_const;

delta_ch4 = zeros(81,1);
delta_ch4_1per = zeros(81,1);
delta_ch4_const = zeros(81,1);
delta_ch4_const1940 = zeros(81,1);

%steady-state assumption (Grewe 2019)
delta_ch4_std = ch4_tchange.*ch4_ppbv;
delta_ch4_std_1per = ch4_tchange_1per.*ch4_ppbv;
delta_ch4_std_const = ch4_tchange_const.*ch4_ppbv;
delta_ch4_std_const1940 = ch4_tchange_const.*ch4_ppbv(1);

%initial condition for transient approach assumed to be equal to the steady-state solution
delta_ch4(1) = delta_ch4_std(1);
delta_ch4_1per(1) = delta_ch4_std_1per(1);
delta_ch4_const(1) = delta_ch4_std_const(1);
delta_ch4_const1940(1) = delta_ch4_std_const1940(1);

for i = 2:1:81
    %transient approach (Grewe and Stenke 2008)
%     delta_ch4(i) = delta_ch4(i-1)*(1-1/(1+ch4_tchange(i-1))*1/tau*deltat)+deltat*ch4_tchange(i-1)/(1+ch4_tchange(i-1))*1/tau*ch4_ppbv(i-1);
%     delta_ch4_1per(i) = delta_ch4_1per(i-1)*(1-1/(1+ch4_tchange_1per(i-1))*1/tau*deltat)+deltat*ch4_tchange_1per(i-1)/(1+ch4_tchange_1per(i-1))*1/tau*ch4_ppbv(i-1);
%     delta_ch4_const(i) = delta_ch4_const(i-1)*(1-1/(1+ch4_tchange_const(i-1))*1/tau*deltat)+deltat*ch4_tchange_const(i-1)/(1+ch4_tchange_const(i-1))*1/tau*ch4_ppbv(i-1);
%     delta_ch4_const1940(i) = delta_ch4_const1940(i-1)*(1-1/(1+ch4_tchange_const(i-1))*1/tau*deltat)+deltat*ch4_tchange_const(i-1)/(1+ch4_tchange_const(i-1))*1/tau*ch4_ppbv(1);
    delta_ch4(i) = runge_kutta4(i-1,delta_ch4(i-1),ch4_tchange,ch4_ppbv,tau);
    delta_ch4_1per(i) = runge_kutta4(i-1,delta_ch4_1per(i-1),ch4_tchange_1per,ch4_ppbv,tau);
    delta_ch4_const(i) = runge_kutta4(i-1,delta_ch4_const(i-1),ch4_tchange_const,ch4_ppbv,tau);
    delta_ch4_const1940(i) = runge_kutta4(i-1,delta_ch4_const1940(i-1),ch4_tchange_const,ch4_ppbv,tau);
end

figure(1) %part A
hold on
plot(year(1:81),delta_ch4(1:81))
plot(year(1:81),delta_ch4_std(1:81))
title('Methane change from aviation NOx emissions from 1940 to 2020')
xlim([1940 2020])
xlabel('Year')
ylabel('\Delta CH_4 (ppbv)')
legend({'Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)'},'Location','southwest')

%correction factors
corr_fact = delta_ch4./delta_ch4_std;
corr_fact2005 = corr_fact(66)
corr_fact_1per = delta_ch4_1per./delta_ch4_std_1per;
corr_fact_const = delta_ch4_const./delta_ch4_std_const;
corr_fact_const1940 = delta_ch4_const1940./delta_ch4_std_const1940;

figure(2) %part B
plot(year(31:81),corr_fact(31:81))
title('Evolution of the correction factor for the steady-state response of metane')
xlabel('Year')
ylabel('Correction factor')

figure(3) %part C
hold on
plot(year(31:81),corr_fact(31:81))
plot(year(31:81),corr_fact_1per(31:81))
plot(year(31:81),corr_fact_const(31:81))
plot(year(31:81),corr_fact_const1940(31:81))
title('Evolution of the correction factor for different scenarios of NOx emissions')
xlabel('Year')
ylabel('Correction factor')
legend({'Real','1% increase','Constant','Constant NOx and CH_4 (1940)'},'Location','northwest')

%part D
ch4_total = ch4_ppbv+delta_ch4;
ch4_total_std = ch4_ppbv+delta_ch4_std;

%1765 1800 1850 1900 1950 2000
x = [0 7 17 27 37 47]; %years relative to 1765 divided by 5 (scaling reasons)
y = [273 274 275 280 289 316]; %n2o ppbv
pol = polyfit(x,y,5); %interpolates the values of n2o ppbv
n2o_ppbv = polyval(pol,(year(1:81)-1765)/5); %calculates n2o ppbv for 1940-2020 with the polynomial found above

RF2008 = (-1.3.*10.^(-6).*(ch4_total+1780)./2-8.2.*10.^(-6).*(n2o_ppbv+320)./2+0.043).*(sqrt(ch4_total)-sqrt(1780));
RF2019 = (-1.3.*10.^(-6).*(ch4_total_std+1780)./2-8.2.*10.^(-6).*(n2o_ppbv+320)./2+0.043).*(sqrt(ch4_total_std)-sqrt(1780));
RF2008_1990 = RF2008(51)
RF2008_2005 = RF2008(66)
RF2008_2020 = RF2008(81)
RF2019_1990 = RF2019(51)
RF2019_2005 = RF2019(66)
RF2019_2020 = RF2019(81)

figure(4)
hold on
plot(year(1:81),RF2008(1:81))
plot(year(1:81),RF2019(1:81))
title('Radiative forcing from aviation CH_4 effects from 1940 to 2020')
xlabel('Year')
ylabel('RF (W/m^2)')
legend({'Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)'},'Location','northwest')

%%
%muddy points:
%steady-state assumption: delta=0?
%ppb=ppbv?
%which ch4 concentration to use in d)