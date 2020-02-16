close all

%inputs
tau = 12;
ch4_tchange2005 = 0.012;
rho_ch4 = 0.656; %kg/m^3
atmmass = 5.1*10^18; %kg

fid = fopen('input','r');
data_em = fscanf(fid,'%g %g %g %g %g', [5,82]);
fclose(fid);

data = data_em';
year = data(:,1);
ch4_ppbv = data(:,2);
nox_em = data(:,3)*10^6;
nox_em_1per = data(:,4)*10^6;
nox_em_const = data(:,5)*10^6;
ch4_tchange = ch4_tchange2005/nox_em(66)*nox_em(:);
ch4_tchange_1per = ch4_tchange2005/nox_em_1per(66)*nox_em_1per(:);
ch4_tchange_const = ch4_tchange2005/nox_em_const(66)*nox_em_const(:);

ddt_ch4 = zeros(81);
ddt_ch4_1per = zeros(81);
ddt_ch4_const = zeros(81);
ddt_ch4_const1940 = zeros(81);
ddt_ch4_std = zeros(81);

for i = 1:1:81
    %transient approach (Grewe and Stenke 2008)
    ddt_ch4(i) = ch4_tchange(i)/(ch4_tchange(i)+1)*1/tau*ch4_ppbv(i)-1/(ch4_tchange(i)+1)*1/tau*(ch4_ppbv(i+1)-ch4_ppbv(i));
    ddt_ch4_1per(i) = ch4_tchange_1per(i)/(ch4_tchange_1per(i)+1)*1/tau*ch4_ppbv(i)-1/(ch4_tchange_1per(i)+1)*1/tau*(ch4_ppbv(i+1)-ch4_ppbv(i));
    ddt_ch4_const(i) = ch4_tchange_const(i)/(ch4_tchange_const(i)+1)*1/tau*ch4_ppbv(i)-1/(ch4_tchange_const(i)+1)*1/tau*(ch4_ppbv(i+1)-ch4_ppbv(i));
    ddt_ch4_const1940(i) = ch4_tchange_const(i)/(ch4_tchange_const(i)+1)*1/tau*ch4_ppbv(1);
    
    %steady-state assumption (Grewe 2019)
    ddt_ch4_std(i) = -1/tau*(ch4_ppbv(i+1)-ch4_ppbv(i)); %I assumed ch4_tchange=0
end

figure(1) %part A
hold on
plot(year(1:81),ddt_ch4(1:81))
plot(year(1:81),ddt_ch4_std(1:81))
title('Methane change from aviation NOx emissions from 1940 to 2020')
xlim([1940 2020])
xlabel('Year')
ylabel('dC/dt CH_4 (ppbv/year)')
legend({'Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)'},'Location','northwest')

%correction factors (don't know if we should divide or subtract)
corr_fact = ddt_ch4./ddt_ch4_std;
corr_fact2005 = corr_fact(66)
corr_fact_1per = ddt_ch4_1per./ddt_ch4_std;
corr_fact_const = ddt_ch4_const./ddt_ch4_std;
corr_fact_const1940 = ddt_ch4_const1940./ddt_ch4_std;

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
legend({'Real','1% increase','Constant','Constant NOx and CH_4 (1940)'},'Location','southwest')

%part D, I assumed ppb=ppbv since the molar volume of every ideal gas is the
%same
ch4_ppb = ch4_ppbv*rho_ch4;
nox_ppb = nox_em/atmmass;

RF2008 = (-1.3.*10.^(-6).*(ch4_ppb(:)+ch4_ppb(1))./2-8.2.*10.^(-6).*(nox_ppb(:)+nox_ppb(1))./2+0.043).*(sqrt(ch4_ppb(:))-sqrt(ch4_ppb(1)));
%RF2019 = (-1.3.*10.^(-6).*(ch4_ppb(:)+ch4_ppb(1))./2-8.2.*10.^(-6).*(nox_ppb(:)+nox_ppb(1))./2+0.043).*(sqrt(ch4_ppb(:))-sqrt(ch4_ppb(1))); %also don't know how to make this different
RF2008_1990 = RF2008(51)
RF2008_2005 = RF2008(66)
RF2008_2020 = RF2008(81)

figure(4)
%hold on
plot(year(1:81),RF2008(1:81))
%plot(year(1:81),RF2019(1:81))
title('Radiative forcing from aviation CH_4 effects from 1940 to 2020')
xlabel('Year')
ylabel('RF (W/m^2)')
%legend({'Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)'},'Location','northwest')

%%
%muddy points:
%steady-state assumption: delta=0?
%ppb=ppbv?
%which ch4 concentration to use in d)