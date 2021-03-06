clear all;
clc;
close all;

%Input data
pertlifetime=12; %years
change2005=0.012;
deltat=1; %years
rhoCH4=0.656; %kg/m^3

emissiondata=fopen('input.txt','r');
emission=fscanf(emissiondata,'%g');
fclose(emissiondata);

i=0;

for index=1:5:801
    i=i+1;
    year(i)=emission(index,1); %Year of study
    CH4ppbv(i)=emission(index+1,1); %Concentration of CH4 in the atmosphere each year
    kgNO2_real(i)=emission(index+2,1)*10^6; %Real NO2 emission by aviation each year
    kgNO2_1perc(i)=emission(index+3,1)*10^6; %Assuming 1% of NOx increase per year
    kgNO2_const(i)=emission(index+4,1)*10^6; %Assuming constant NOx emissions each year
end

%Change from mass to ppb of NOx
atmmass=5.1*10^18;

%A. Methane change from aviation NOx
for index=1:1:81
    delta(index) = change2005*kgNO2_real(index)/kgNO2_real(66);%Methane lifetime change
    delta_1perc(index) = change2005*kgNO2_1perc(index)/kgNO2_1perc(66);%Methane lifetime change for 1% increase
    delta_const(index) = change2005*kgNO2_const(index)/kgNO2_const(66);%Methane lifetime change for constant emission
    %A.a. Approach by Grewe-Stenke (2008)
    dCdt2008(index) = delta(index)/(1+delta(index)) * (CH4ppbv(1,index)/pertlifetime)-1/(1+delta(index))*((CH4ppbv(1,index)-CH4ppbv(1,index+1))/pertlifetime);
    dCdt2008_1perc(index) = delta_1perc(index)/(1+delta_1perc(index)) * (CH4ppbv(1,index)/pertlifetime)-1/(1+delta_1perc(index))*((CH4ppbv(1,index)-CH4ppbv(1,index+1))/pertlifetime);
    dCdt2008_const(index) = delta_const(index)/(1+delta_const(index)) * (CH4ppbv(1,index)/pertlifetime)-1/(1+delta_const(index))*((CH4ppbv(1,index)-CH4ppbv(1,index+1))/pertlifetime);
    dCdt2008_const1940(index) = delta_const(index)/(1+delta_const(index)) * (CH4ppbv(1,1)/pertlifetime);
    %A.b. Steady-state assumption by Grewe (2019)
    dCdt2019(index) = delta(index)*CH4ppbv(1,index);
    dCdt2019_1perc(index) = delta_1perc(index)*CH4ppbv(1,index);
    dCdt2019_const(index) = delta_const(index)*CH4ppbv(1,index);
    dCdt2019_const1940(index) = delta_const(index)*CH4ppbv(1,1);
end
year19402020=year(1:81);

figure(1)
plot(year19402020,dCdt2008, 'X-')
hold on
plot(year19402020,dCdt2019, 'D-')
title('Methane change from aviation NOx emissions from 1940 to 2020')
xlabel('Year')
ylabel('dC/dt CH4 (ppbv/year)')
legend('Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)')

%B. Correction factor
corrfactor=dCdt2019./dCdt2008;

year19702020=year(31:81);

%Plot of correction factor from 1970 to 2020
figure(2)
plot(year19702020,corrfactor(31:81))
title('Evolution of the correction factor to correct steady-state computations of methane change from aviation NOx')
xlabel('Year')
ylabel('Correction factor')

%Correction factor in 2005
corrfactor2005=corrfactor(66)

%C.- Factors influencing the correction factor
corrfactor_1perc=dCdt2019_1perc./dCdt2008_1perc;
corrfactor_const=dCdt2019_const./dCdt2008_const;
corrfactor_const1940=dCdt2019_const1940./dCdt2008_const1940;

figure(3)
plot(year19702020,corrfactor(31:81),'X-')
hold on
plot(year19702020,corrfactor_1perc(31:81),'D-')
plot(year19702020,corrfactor_const(31:81),'S-')
plot(year19702020,corrfactor_const1940(31:81),'*-')
title('Evolution of the correction factor for different scenarios')
xlabel('Year')
ylabel('Correction factor')
legend('Real', '1% increase', 'Constant NOx', 'Constant NOx and CH4 (1940)')

%D.- Radiative forcing
CH4ppbref=CH4ppbv(1)*rhoCH4; %DONT KNOW WHERE TO GET IT
CH4ppb=CH4ppbv*rhoCH4;
NOxppb=kgNO2_real/atmmass;
NOxppbref=NOxppb(1); %DONT KNOW WHERE TO GET IT

RF2008=(-1.3.*10.^(-6).*(CH4ppb+CH4ppbref)./2-8.2.*10.^(-6).*(NOxppb+NOxppbref)./2+0.043).*(sqrt(CH4ppb)-sqrt(CH4ppbref));
RF2019=(-1.3.*10.^(-6).*(CH4ppb+CH4ppbref)./2-8.2.*10.^(-6).*(NOxppb+NOxppbref)./2+0.043).*(sqrt(CH4ppb)-sqrt(CH4ppbref)); %SHOULD NOT BE SAME

figure(4)
plot(year19402020,RF2008(1:81), 'X-')
hold on
plot(year19402020,RF2019(1:81), 'D-')
title('Radiative forcing from aviation CH4 effects from 1940 to 2020')
xlabel('Year')
ylabel('RF (W/m^2)')
legend('Grewe-Stenke (2008)','Steady-state assumption by Grewe et al. (2019)')

%% NOT SURE
% ppbv is equal to ppb, or need density?
% expression of steady state 2019
% deltaC equal to C(index)-C(index-1)
% correction factor definition (difference or quotient)
% NOx emissions as N2O in Etminan equations (part 4)
% expressions from Etminan valid for N2O between 200-525 ppb and CH4 between 340-3500 ppb, check
% background values from Grewe 2019
% reference values for Etminan calculations
% RF from 2008 and 2019 should not be same in part 4