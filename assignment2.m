clear all;
clc;
close all;

%% INPUT DATA

%Input of txt data
numbervariables=31; %30 + 1 (UTC)

IAGOSdata=fopen('IAGOS_timeseries_2019021011295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        UTC1(index)=IAGOS(1+(index-1)*numbervariables,:);
        air_press_AC1(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC1(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC21(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC1=air_press_AC1(air_press_AC1~=0);
air_temp_AC1=air_temp_AC1(air_temp_AC1~=0);
H2O_gas_PC21=H2O_gas_PC21(H2O_gas_PC21~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019021102051591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC2(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC2(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC22(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC2=air_press_AC2(air_press_AC2~=0);
air_temp_AC2=air_temp_AC2(air_temp_AC2~=0);
H2O_gas_PC22=H2O_gas_PC22(H2O_gas_PC22~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019021122212591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC3(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC3(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC23(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC3=air_press_AC3(air_press_AC3~=0);
air_temp_AC3=air_temp_AC3(air_temp_AC3~=0);
H2O_gas_PC23=H2O_gas_PC23(H2O_gas_PC23~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019021216295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC4(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC4(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC24(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC4=air_press_AC4(air_press_AC4~=0);
air_temp_AC4=air_temp_AC4(air_temp_AC4~=0);
H2O_gas_PC24=H2O_gas_PC24(H2O_gas_PC24~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019042914412591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC5(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC5(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC25(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC5=air_press_AC5(air_press_AC5~=0);
air_temp_AC5=air_temp_AC5(air_temp_AC5~=0);
H2O_gas_PC25=H2O_gas_PC25(H2O_gas_PC25~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019043004153591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC6(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC6(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC26(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC6=air_press_AC6(air_press_AC6~=0);
air_temp_AC6=air_temp_AC6(air_temp_AC6~=0);
H2O_gas_PC26=H2O_gas_PC26(H2O_gas_PC26~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019021011295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC7(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC7(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC27(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC7=air_press_AC7(air_press_AC7~=0);
air_temp_AC7=air_temp_AC7(air_temp_AC7~=0);
H2O_gas_PC27=H2O_gas_PC27(H2O_gas_PC27~=0);

IAGOSdata=fopen('IAGOS_timeseries_2019021011295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    if IAGOS(10+(index-1)*numbervariables,:)>0 && IAGOS(16+(index-1)*numbervariables,:)>0 && IAGOS(28+(index-1)*numbervariables,:)>0
        air_press_AC8(index)=IAGOS(10+(index-1)*numbervariables,:);
        air_temp_AC8(index)=IAGOS(16+(index-1)*numbervariables,:);
        H2O_gas_PC28(index)=IAGOS(28+(index-1)*numbervariables,:);
    end
end

%Remove zeros
air_press_AC8=air_press_AC8(air_press_AC8~=0);
air_temp_AC8=air_temp_AC8(air_temp_AC8~=0);
H2O_gas_PC28=H2O_gas_PC28(H2O_gas_PC28~=0);

%Overall propulsive efficiency of aircraft
eff1=0.34;
eff2=0.8;

%Time step
timestep=UTC1(2)-UTC1(1);

%Assumed values
cp=1003.5;

%Molar mass of substances
Mair=0.02897; %kg/mol
MH2O=0.01801528; %kg/mol

%Fuel dependent variables
LHV=4.32*10^7; %LHV of Jet A in J/kg
EIH2O=1.23; % kgemission/kgfuel

%Temperature threshold SAC
Tfreeze=273.15-38; %-38�C in K

%% OBTENTION OF SATURATION LINE

%% OBTENTION OF SATURATION LINE

%Saturation line for water
T=213.15:0.05:273.15; %K
a1w=-6096.9385;
a2w=21.2409632;
a3w=-0.02711193;
a4w=0.00001673952;
a7w=2.433502;
esw=exp(a1w.*T.^(-1)+a2w+a3w.*T+a4w.*T.^2+a7w.*log(T));
Tsatw = T;
Psatw = esw;

%Saturation line for ice
a1i=-6024.5282;
a2i=29.32707;
a3i=0.010613868;
a4i=-0.000013198825;
a7i=-0.49382577;
esi=exp(a1i.*T.^(-1)+a2i+a3i.*T+a4i.*T.^2+a7i.*log(T));
Tsati = T;
Psati = esi;

%Plot of saturation lines
figure(1)
plot(Tsatw-273.15,Psatw)
hold on
plot(Tsati-273.15,Psati)
title('Saturation lines')
xlabel('T (�C)')
ylabel('Water vapour pressure (Pa)')
xlim([-60 -20])
ylim([0 50])
legend({'Water','Ice'},'Location','northwest')

for j=1:length(T)-1
    dPsatw_dTsatw(j) = (Psatw(j+1)-Psatw(j))/(T(j+1)-T(j));
end
%% PART A: ISSR
%Ice supersaturated regions are above the line of saturation of ice
linesatw=[Tsatw;Psatw];
linesati=[Tsati;Psati];

indexISSR1=0;
indexISSR2=0;
indexISSR3=0;
indexISSR4=0;
indexISSR5=0;
indexISSR6=0;
indexISSR7=0;
indexISSR8=0;

indextime1=1;
indextime2=1;
indextime3=1;
indextime4=1;
indextime5=1;
indextime6=1;
indextime7=1;
indextime8=1;

time1(1)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
time2(1)=5;
time3(1)=5;
time4(1)=5;
time5(1)=5;
time6(1)=5;
time7(1)=5;
time8(1)=5;

indexTthresISSR1=0;
indexTthresISSR2=0;
indexTthresISSR3=0;
indexTthresISSR4=0;
indexTthresISSR5=0;
indexTthresISSR6=0;
indexTthresISSR7=0;
indexTthresISSR8=0;

for index=1:length(air_temp_AC1)
    esiISSR1(index)=exp(a1i.*air_temp_AC1(index).^(-1)+a2i+a3i.*air_temp_AC1(index)+a4i.*air_temp_AC1(index).^2+a7i.*log(air_temp_AC1(index)));
    PH2OISSR1(index)=H2O_gas_PC21(index).*air_press_AC1(index)/(10^6);
    RHi1(index)=PH2OISSR1(index)./esiISSR1(index)*100;
    if RHi1(index)>100
        indexISSR1=indexISSR1+1;
        if air_temp_AC1(index)<Tfreeze
            indexTthresISSR1=indexTthresISSR1+1;
        end
        if RHi1(index-1)>100
            time1(indextime1)=time1(indextime1)+5; %LOOK AGAIN
        else
            indextime1=indextime1+1;
            time1(indextime1)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC2)
    esiISSR2(index)=exp(a1i.*air_temp_AC2(index).^(-1)+a2i+a3i.*air_temp_AC2(index)+a4i.*air_temp_AC2(index).^2+a7i.*log(air_temp_AC2(index)));
    PH2OISSR2(index)=H2O_gas_PC22(index).*air_press_AC2(index)/(10^6);
    RHi2(index)=PH2OISSR2(index)./esiISSR2(index)*100;
    if RHi2(index)>100
        indexISSR2=indexISSR2+1;
        if air_temp_AC2(index)<Tfreeze
            indexTthresISSR2=indexTthresISSR2+1;
        end
        if RHi2(index-1)>100
            time2(indextime2)=time2(indextime2)+5; %LOOK AGAIN
        else
            indextime2=indextime2+1;
            time2(indextime2)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC3)
    esiISSR3(index)=exp(a1i.*air_temp_AC3(index).^(-1)+a2i+a3i.*air_temp_AC3(index)+a4i.*air_temp_AC3(index).^2+a7i.*log(air_temp_AC3(index)));
    PH2OISSR3(index)=H2O_gas_PC23(index).*air_press_AC3(index)/(10^6);
    RHi3(index)=PH2OISSR3(index)./esiISSR3(index)*100;
    if RHi3(index)>100
        indexISSR3=indexISSR3+1;
        if air_temp_AC3(index)<Tfreeze
            indexTthresISSR3=indexTthresISSR3+1;
        end
        if RHi3(index-1)>100
            time3(indextime3)=time3(indextime3)+5; %LOOK AGAIN
        else
            indextime3=indextime3+1;
            time3(indextime3)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC4)
    esiISSR4(index)=exp(a1i.*air_temp_AC4(index).^(-1)+a2i+a3i.*air_temp_AC4(index)+a4i.*air_temp_AC4(index).^2+a7i.*log(air_temp_AC4(index)));
    PH2OISSR4(index)=H2O_gas_PC24(index).*air_press_AC4(index)/(10^6);
    RHi4(index)=PH2OISSR4(index)./esiISSR4(index)*100;
    if RHi4(index)>100
        indexISSR4=indexISSR4+1;
        if air_temp_AC4(index)<Tfreeze
            indexTthresISSR4=indexTthresISSR4+1;
        end
        if RHi4(index-1)>100
            time4(indextime4)=time4(indextime4)+5; %LOOK AGAIN
        else
            indextime4=indextime4+1;
            time4(indextime4)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC5)
    esiISSR5(index)=exp(a1i.*air_temp_AC5(index).^(-1)+a2i+a3i.*air_temp_AC5(index)+a4i.*air_temp_AC5(index).^2+a7i.*log(air_temp_AC5(index)));
    PH2OISSR5(index)=H2O_gas_PC25(index).*air_press_AC5(index)/(10^6);
    RHi5(index)=PH2OISSR5(index)./esiISSR5(index)*100;
    if RHi5(index)>100
        indexISSR5=indexISSR5+1;
        if air_temp_AC5(index)<Tfreeze
            indexTthresISSR5=indexTthresISSR5+1;
        end
        if RHi5(index-1)>100
            time5(indextime5)=time5(indextime5)+5; %LOOK AGAIN
        else
            indextime5=indextime5+1;
            time5(indextime5)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC6)
    esiISSR6(index)=exp(a1i.*air_temp_AC6(index).^(-1)+a2i+a3i.*air_temp_AC6(index)+a4i.*air_temp_AC6(index).^2+a7i.*log(air_temp_AC6(index)));
    PH2OISSR6(index)=H2O_gas_PC26(index).*air_press_AC6(index)/(10^6);
    RHi6(index)=PH2OISSR6(index)./esiISSR6(index)*100;
    if RHi6(index)>100
        indexISSR6=indexISSR6+1;
        if air_temp_AC6(index)<Tfreeze
            indexTthresISSR6=indexTthresISSR6+1;
        end
        if RHi6(index-1)>100
            time6(indextime6)=time6(indextime6)+5; %LOOK AGAIN
        else
            indextime6=indextime6+1;
            time6(indextime6)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC7)
    esiISSR7(index)=exp(a1i.*air_temp_AC7(index).^(-1)+a2i+a3i.*air_temp_AC7(index)+a4i.*air_temp_AC7(index).^2+a7i.*log(air_temp_AC7(index)));
    PH2OISSR7(index)=H2O_gas_PC27(index).*air_press_AC7(index)/(10^6);
    RHi7(index)=PH2OISSR7(index)./esiISSR7(index)*100;
    if RHi7(index)>100
        indexISSR7=indexISSR7+1;
        if air_temp_AC7(index)<Tfreeze
            indexTthresISSR7=indexTthresISSR7+1;
        end
        if RHi7(index-1)>100
            time7(indextime7)=time7(indextime7)+5; %LOOK AGAIN
        else
            indextime7=indextime7+1;
            time7(indextime7)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

for index=1:length(air_temp_AC8)
    esiISSR8(index)=exp(a1i.*air_temp_AC8(index).^(-1)+a2i+a3i.*air_temp_AC8(index)+a4i.*air_temp_AC8(index).^2+a7i.*log(air_temp_AC8(index)));
    PH2OISSR8(index)=H2O_gas_PC28(index).*air_press_AC8(index)/(10^6);
    RHi8(index)=PH2OISSR8(index)./esiISSR8(index)*100;
    if RHi8(index)>100
        indexISSR8=indexISSR8+1;
        if air_temp_AC8(index)<Tfreeze
            indexTthresISSR8=indexTthresISSR8+1;
        end
        if RHi8(index-1)>100
            time8(indextime8)=time8(indextime8)+5; %LOOK AGAIN
        else
            indextime8=indextime8+1;
            time8(indextime8)=5; %DEFINED AS 5 TO AVOID PROBLEMS; PROVE
        end
    end
end

percentISSR1=indexISSR1/length(air_temp_AC1)*100;
numberISSR1=indextime1-1;
meantimeISSR1=sum(time1)/(numberISSR1*60); %I THINK IT'S CORRECT, MAYBE numberISSR/indextime*5 ALSO VALID
percentISSR2=indexISSR2/length(air_temp_AC2)*100;
numberISSR2=indextime2-1;
meantimeISSR2=sum(time2)/(numberISSR2*60);
percentISSR3=indexISSR3/length(air_temp_AC3)*100;
numberISSR3=indextime3-1;
meantimeISSR3=sum(time3)/(numberISSR3*60);
percentISSR4=indexISSR4/length(air_temp_AC4)*100;
numberISSR4=indextime4-1;
meantimeISSR4=sum(time4)/(numberISSR4*60);
percentISSR5=indexISSR5/length(air_temp_AC5)*100;
numberISSR5=indextime5-1;
meantimeISSR5=sum(time5)/(numberISSR5*60);
percentISSR6=indexISSR6/length(air_temp_AC6)*100;
numberISSR6=indextime6-1;
meantimeISSR6=sum(time6)/(numberISSR6*60);
percentISSR7=indexISSR7/length(air_temp_AC7)*100;
numberISSR7=indextime7-1;
meantimeISSR7=sum(time7)/(numberISSR7*60);
percentISSR8=indexISSR8/length(air_temp_AC8)*100;
numberISSR8=indextime8-1;
meantimeISSR8=sum(time8)/(numberISSR8*60);

percentTthresISSR1=indexTthresISSR1/length(air_temp_AC1)*100;
percentTthresISSR2=indexTthresISSR2/length(air_temp_AC2)*100;
percentTthresISSR3=indexTthresISSR3/length(air_temp_AC3)*100;
percentTthresISSR4=indexTthresISSR4/length(air_temp_AC4)*100;
percentTthresISSR5=indexTthresISSR5/length(air_temp_AC5)*100;
percentTthresISSR6=indexTthresISSR6/length(air_temp_AC6)*100;
percentTthresISSR7=indexTthresISSR7/length(air_temp_AC7)*100;
percentTthresISSR8=indexTthresISSR8/length(air_temp_AC8)*100;

%% PART B: Temperature threshold
% Temperature threshold of -38�C=235.15K according to SAC

indexTthres1=0;
indexTthres2=0;
indexTthres3=0;
indexTthres4=0;
indexTthres5=0;
indexTthres6=0;
indexTthres7=0;
indexTthres8=0;

for index=1:length(air_temp_AC1)
    if air_temp_AC1(index)<Tfreeze && air_temp_AC1(index)>0
        indexTthres1=indexTthres1+1;
    end
end

for index=1:length(air_temp_AC2)
    if air_temp_AC2(index)<Tfreeze && air_temp_AC2(index)>0
        indexTthres2=indexTthres2+1;
    end
end

for index=1:length(air_temp_AC3)
    if air_temp_AC3(index)<Tfreeze && air_temp_AC3(index)>0
        indexTthres3=indexTthres3+1;
    end
end

for index=1:length(air_temp_AC4)
    if air_temp_AC4(index)<Tfreeze && air_temp_AC4(index)>0
        indexTthres4=indexTthres4+1;
    end
end

for index=1:length(air_temp_AC5)
    if air_temp_AC5(index)<Tfreeze && air_temp_AC5(index)>0
        indexTthres5=indexTthres5+1;
    end
end

for index=1:length(air_temp_AC6)
    if air_temp_AC6(index)<Tfreeze && air_temp_AC6(index)>0
        indexTthres6=indexTthres6+1;
    end
end

for index=1:length(air_temp_AC7)
    if air_temp_AC7(index)<Tfreeze && air_temp_AC7(index)>0
        indexTthres7=indexTthres7+1;
    end
end

for index=1:length(air_temp_AC8)
    if air_temp_AC8(index)<Tfreeze && air_temp_AC8(index)>0
        indexTthres8=indexTthres8+1;
    end
end


%Computation of percentages
percentTthres1=indexTthres1/length(air_temp_AC1)*100;
percentTthres2=indexTthres2/length(air_temp_AC2)*100;
percentTthres3=indexTthres3/length(air_temp_AC3)*100;
percentTthres4=indexTthres4/length(air_temp_AC4)*100;
percentTthres5=indexTthres5/length(air_temp_AC5)*100;
percentTthres6=indexTthres6/length(air_temp_AC6)*100;
percentTthres7=indexTthres7/length(air_temp_AC7)*100;
percentTthres8=indexTthres8/length(air_temp_AC8)*100;

%% PART C: Schmidt-Appleman criterion
indexSAC1_1=0;
indexSAC2_1=0;
indexSAC1_2=0;
indexSAC2_2=0;
indexSAC1_3=0;
indexSAC2_3=0;
indexSAC1_4=0;
indexSAC2_4=0;
indexSAC1_5=0;
indexSAC2_5=0;
indexSAC1_6=0;
indexSAC2_6=0;
indexSAC1_7=0;
indexSAC2_7=0;
indexSAC1_8=0;
indexSAC2_8=0;
indexpers1_1 = 0;
indexpers2_1 = 0;
indexpers1_2 = 0;
indexpers2_2 = 0;
indexpers1_3 = 0;
indexpers2_3 = 0;
indexpers1_4 = 0;
indexpers2_4 = 0;
indexpers1_5 = 0;
indexpers2_5 = 0;
indexpers1_6 = 0;
indexpers2_6 = 0;
indexpers1_7 = 0;
indexpers2_7 = 0;
indexpers1_8 = 0;
indexpers2_8 = 0;
%ROBUST=0;

for index=1:length(air_press_AC1)
    G1_1(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_1(index)<0
            Ttang1_1(index) = NaN;
            Ptang1_1(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_1(index)
            Ttang1_1(index) = T(j);
            Ptang1_1(index) = Psatw(j);
            break
        end
    end
    Pline1_1(index,:)= H2O_gas_PC21(index).*air_press_AC1(index)/(10^6) + G1_1(index) * (T(:)-air_temp_AC1(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_1(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_1=indexSAC1_1+1;
    %     end
    Psac1_1(index,:) = Ptang1_1(index)+G1_1(index)*(T(:)-Ttang1_1(index)); %tangent threshold curve
    
    if Pline1_1(index,1) >= Psac1_1(index,1)
        indexSAC1_1 = indexSAC1_1+1;
        if RHi1(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC1(index).^(-1)+a2w+a3w.*air_temp_AC1(index)+a4w.*air_temp_AC1(index).^2+a7w.*log(air_temp_AC1(index)));
            PH2Opers(index)=H2O_gas_PC21(index).*air_press_AC1(index)/(10^6);
            RHw1(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw1(index)<100
                indexpers1_1 = indexpers1_1+1;
            end
        end
    end
    
    G2_1(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_1(index)<0
            Ttang2_1(index) = NaN;
            Ptang2_1(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_1(index)
            Ttang2_1(index) = T(j);
            Ptang2_1(index) = Psatw(j);
            break
        end
    end
    Pline2_1(index,:)= H2O_gas_PC21(index).*air_press_AC1(index)/(10^6) + G2_1(index) * (T(:)-air_temp_AC1(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_1(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_1=indexSAC2_1+1;
    %     end
    Psac2_1(index,:) = Ptang2_1(index)+G2_1(index)*(T(:)-Ttang2_1(index)); %tangent threshold curve
    
    if Pline2_1(index,1) >= Psac2_1(index,1)
        indexSAC2_1 = indexSAC2_1+1;
        if RHi1(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC1(index).^(-1)+a2w+a3w.*air_temp_AC1(index)+a4w.*air_temp_AC1(index).^2+a7w.*log(air_temp_AC1(index)));
            PH2Opers(index)=H2O_gas_PC21(index).*air_press_AC1(index)/(10^6);
            RHw1(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw1(index)<100
                indexpers2_1 = indexpers2_1+1;
            end
        end
        %if Pline2_1(index,:) >= Psati(:) & Pline2_1(index,:) <= Psatw(:)
        %    indexpers2_1 = indexpers2_1+1;
        %end
    end
end

for index=1:length(air_press_AC2)
    G1_2(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_2(index)<0
            Ttang1_2(index) = NaN;
            Ptang1_2(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_2(index)
            Ttang1_2(index) = T(j);
            Ptang1_2(index) = Psatw(j);
            break
        end
    end
    Pline1_2(index,:)= H2O_gas_PC22(index).*air_press_AC2(index)/(10^6) + G1_2(index) * (T(:)-air_temp_AC2(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_2(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_2=indexSAC1_2+1;
    %     end
    Psac1_2(index,:) = Ptang1_2(index)+G1_2(index)*(T(:)-Ttang1_2(index)); %tangent threshold curve
    
    if Pline1_2(index,1) >= Psac1_2(index,1)
        indexSAC1_2 = indexSAC1_2+1;
        if RHi2(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC2(index).^(-1)+a2w+a3w.*air_temp_AC2(index)+a4w.*air_temp_AC2(index).^2+a7w.*log(air_temp_AC2(index)));
            PH2Opers(index)=H2O_gas_PC22(index).*air_press_AC2(index)/(10^6);
            RHw2(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw2(index)<100
                indexpers1_2 = indexpers1_2+1;
            end
        end
    end
    
    G2_2(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_2(index)<0
            Ttang2_2(index) = NaN;
            Ptang2_2(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_2(index)
            Ttang2_2(index) = T(j);
            Ptang2_2(index) = Psatw(j);
            break
        end
    end
    Pline2_2(index,:)= H2O_gas_PC22(index).*air_press_AC2(index)/(10^6) + G2_2(index) * (T(:)-air_temp_AC2(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_2(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_2=indexSAC2_2+1;
    %     end
    Psac2_2(index,:) = Ptang2_2(index)+G2_2(index)*(T(:)-Ttang2_2(index)); %tangent threshold curve
    
    if Pline2_2(index,1) >= Psac2_2(index,1)
        indexSAC2_2 = indexSAC2_2+1;
        if RHi2(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC2(index).^(-1)+a2w+a3w.*air_temp_AC2(index)+a4w.*air_temp_AC2(index).^2+a7w.*log(air_temp_AC2(index)));
            PH2Opers(index)=H2O_gas_PC22(index).*air_press_AC2(index)/(10^6);
            RHw2(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw2(index)<100
                indexpers2_2 = indexpers2_2+1;
            end
        end
    end
end

for index=1:length(air_press_AC3)
    G1_3(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_3(index)<0
            Ttang1_3(index) = NaN;
            Ptang1_3(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_3(index)
            Ttang1_3(index) = T(j);
            Ptang1_3(index) = Psatw(j);
            break
        end
    end
    Pline1_3(index,:)= H2O_gas_PC23(index).*air_press_AC3(index)/(10^6) + G1_3(index) * (T(:)-air_temp_AC3(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_3(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_3=indexSAC1_3+1;
    %     end
    Psac1_3(index,:) = Ptang1_3(index)+G1_3(index)*(T(:)-Ttang1_3(index)); %tangent threshold curve
    
    if Pline1_3(index,1) >= Psac1_3(index,1)
        indexSAC1_3 = indexSAC1_3+1;
        if RHi3(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC3(index).^(-1)+a2w+a3w.*air_temp_AC3(index)+a4w.*air_temp_AC3(index).^2+a7w.*log(air_temp_AC3(index)));
            PH2Opers(index)=H2O_gas_PC23(index).*air_press_AC3(index)/(10^6);
            RHw3(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw3(index)<100
                indexpers1_3 = indexpers1_3+1;
            end
        end
    end
    
    G2_3(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_3(index)<0
            Ttang2_3(index) = NaN;
            Ptang2_3(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_3(index)
            Ttang2_3(index) = T(j);
            Ptang2_3(index) = Psatw(j);
            break
        end
    end
    Pline2_3(index,:)= H2O_gas_PC23(index).*air_press_AC3(index)/(10^6) + G2_3(index) * (T(:)-air_temp_AC3(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_3(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_3=indexSAC2_3+1;
    %     end
    Psac2_3(index,:) = Ptang2_3(index)+G2_3(index)*(T(:)-Ttang2_3(index)); %tangent threshold curve
    
    if Pline2_3(index,1) >= Psac2_3(index,1)
        indexSAC2_3 = indexSAC2_3+1;
        if RHi3(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC3(index).^(-1)+a2w+a3w.*air_temp_AC3(index)+a4w.*air_temp_AC3(index).^2+a7w.*log(air_temp_AC3(index)));
            PH2Opers(index)=H2O_gas_PC23(index).*air_press_AC3(index)/(10^6);
            RHw3(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw3(index)<100
                indexpers2_3 = indexpers2_3+1;
            end
        end
    end
end

for index=1:length(air_press_AC4)
    G1_4(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_4(index)<0
            Ttang1_4(index) = NaN;
            Ptang1_4(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_4(index)
            Ttang1_4(index) = T(j);
            Ptang1_4(index) = Psatw(j);
            break
        end
    end
    Pline1_4(index,:)= H2O_gas_PC24(index).*air_press_AC4(index)/(10^6) + G1_4(index) * (T(:)-air_temp_AC4(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_4(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_4=indexSAC1_4+1;
    %     end
    Psac1_4(index,:) = Ptang1_4(index)+G1_4(index)*(T(:)-Ttang1_4(index)); %tangent threshold curve
    
    if Pline1_4(index,1) >= Psac1_4(index,1)
        indexSAC1_4 = indexSAC1_4+1;
        if RHi4(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC4(index).^(-1)+a2w+a3w.*air_temp_AC4(index)+a4w.*air_temp_AC4(index).^2+a7w.*log(air_temp_AC4(index)));
            PH2Opers(index)=H2O_gas_PC24(index).*air_press_AC4(index)/(10^6);
            RHw4(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw4(index)<100
                indexpers1_4 = indexpers1_4+1;
            end
        end
    end
    
    G2_4(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_4(index)<0
            Ttang2_4(index) = NaN;
            Ptang2_4(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_4(index)
            Ttang2_4(index) = T(j);
            Ptang2_4(index) = Psatw(j);
            break
        end
    end
    Pline2_4(index,:)= H2O_gas_PC24(index).*air_press_AC4(index)/(10^6) + G2_4(index) * (T(:)-air_temp_AC4(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_4(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_4=indexSAC2_4+1;
    %     end
    Psac2_4(index,:) = Ptang2_4(index)+G2_4(index)*(T(:)-Ttang2_4(index)); %tangent threshold curve
    
    if Pline2_4(index,1) >= Psac2_4(index,1)
        indexSAC2_4 = indexSAC2_4+1;
        if RHi4(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC4(index).^(-1)+a2w+a3w.*air_temp_AC4(index)+a4w.*air_temp_AC4(index).^2+a7w.*log(air_temp_AC4(index)));
            PH2Opers(index)=H2O_gas_PC24(index).*air_press_AC4(index)/(10^6);
            RHw4(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw4(index)<100
                indexpers2_4 = indexpers2_4+1;
            end
        end
    end
end

for index=1:length(air_press_AC5)
    G1_5(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_5(index)<0
            Ttang1_5(index) = NaN;
            Ptang1_5(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_5(index)
            Ttang1_5(index) = T(j);
            Ptang1_5(index) = Psatw(j);
            break
        end
    end
    Pline1_5(index,:)= H2O_gas_PC25(index).*air_press_AC5(index)/(10^6) + G1_5(index) * (T(:)-air_temp_AC5(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_5(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_5=indexSAC1_5+1;
    %     end
    Psac1_5(index,:) = Ptang1_5(index)+G1_5(index)*(T(:)-Ttang1_5(index)); %tangent threshold curve
    
    if Pline1_5(index,1) >= Psac1_5(index,1)
        indexSAC1_5 = indexSAC1_5+1;
        if RHi5(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC5(index).^(-1)+a2w+a3w.*air_temp_AC5(index)+a4w.*air_temp_AC5(index).^2+a7w.*log(air_temp_AC5(index)));
            PH2Opers(index)=H2O_gas_PC25(index).*air_press_AC5(index)/(10^6);
            RHw5(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw5(index)<100
                indexpers1_5 = indexpers1_5+1;
            end
        end
    end
    
    G2_5(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_5(index)<0
            Ttang2_5(index) = NaN;
            Ptang2_5(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_5(index)
            Ttang2_5(index) = T(j);
            Ptang2_5(index) = Psatw(j);
            break
        end
    end
    Pline2_5(index,:)= H2O_gas_PC25(index).*air_press_AC5(index)/(10^6) + G2_5(index) * (T(:)-air_temp_AC5(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_5(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_5=indexSAC2_5+1;
    %     end
    Psac2_5(index,:) = Ptang2_5(index)+G2_5(index)*(T(:)-Ttang2_5(index)); %tangent threshold curve
    
    if Pline2_5(index,1) >= Psac2_5(index,1)
        indexSAC2_5 = indexSAC2_5+1;
        if RHi5(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC5(index).^(-1)+a2w+a3w.*air_temp_AC5(index)+a4w.*air_temp_AC5(index).^2+a7w.*log(air_temp_AC5(index)));
            PH2Opers(index)=H2O_gas_PC25(index).*air_press_AC5(index)/(10^6);
            RHw5(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw5(index)<100
                indexpers2_5 = indexpers2_5+1;
            end
        end
    end
end

for index=1:length(air_press_AC6)
    G1_6(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_6(index)<0
            Ttang1_6(index) = NaN;
            Ptang1_6(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_6(index)
            Ttang1_6(index) = T(j);
            Ptang1_6(index) = Psatw(j);
            break
        end
    end
    Pline1_6(index,:)= H2O_gas_PC26(index).*air_press_AC6(index)/(10^6) + G1_6(index) * (T(:)-air_temp_AC6(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_6(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_6=indexSAC1_6+1;
    %     end
    Psac1_6(index,:) = Ptang1_6(index)+G1_6(index)*(T(:)-Ttang1_6(index)); %tangent threshold curve
    
    if Pline1_6(index,1) >= Psac1_6(index,1)
        indexSAC1_6 = indexSAC1_6+1;
        if RHi6(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC6(index).^(-1)+a2w+a3w.*air_temp_AC6(index)+a4w.*air_temp_AC6(index).^2+a7w.*log(air_temp_AC6(index)));
            PH2Opers(index)=H2O_gas_PC26(index).*air_press_AC6(index)/(10^6);
            RHw6(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw6(index)<100
                indexpers1_6 = indexpers1_6+1;
            end
        end
    end
    
    G2_6(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_6(index)<0
            Ttang2_6(index) = NaN;
            Ptang2_6(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_6(index)
            Ttang2_6(index) = T(j);
            Ptang2_6(index) = Psatw(j);
            break
        end
    end
    Pline2_6(index,:)= H2O_gas_PC26(index).*air_press_AC6(index)/(10^6) + G2_6(index) * (T(:)-air_temp_AC6(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_6(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_6=indexSAC2_6+1;
    %     end
    Psac2_6(index,:) = Ptang2_6(index)+G2_6(index)*(T(:)-Ttang2_6(index)); %tangent threshold curve
    
    if Pline2_6(index,1) >= Psac2_6(index,1)
        indexSAC2_6 = indexSAC2_6+1;
        if RHi6(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC6(index).^(-1)+a2w+a3w.*air_temp_AC6(index)+a4w.*air_temp_AC6(index).^2+a7w.*log(air_temp_AC6(index)));
            PH2Opers(index)=H2O_gas_PC26(index).*air_press_AC6(index)/(10^6);
            RHw6(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw6(index)<100
                indexpers2_6 = indexpers2_6+1;
            end
        end
    end
end

for index=1:length(air_press_AC7)
    G1_7(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_7(index)<0
            Ttang1_7(index) = NaN;
            Ptang1_7(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_7(index)
            Ttang1_7(index) = T(j);
            Ptang1_7(index) = Psatw(j);
            break
        end
    end
    Pline1_7(index,:)= H2O_gas_PC27(index).*air_press_AC7(index)/(10^6) + G1_7(index) * (T(:)-air_temp_AC7(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_7(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_7=indexSAC1_7+1;
    %     end
    Psac1_7(index,:) = Ptang1_7(index)+G1_7(index)*(T(:)-Ttang1_7(index)); %tangent threshold curve
    
    if Pline1_7(index,1) >= Psac1_7(index,1)
        indexSAC1_7 = indexSAC1_7+1;
        if RHi7(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC7(index).^(-1)+a2w+a3w.*air_temp_AC7(index)+a4w.*air_temp_AC7(index).^2+a7w.*log(air_temp_AC7(index)));
            PH2Opers(index)=H2O_gas_PC27(index).*air_press_AC7(index)/(10^6);
            RHw7(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw7(index)<100
                indexpers1_7 = indexpers1_7+1;
            end
        end
    end
    
    G2_7(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_7(index)<0
            Ttang2_7(index) = NaN;
            Ptang2_7(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_7(index)
            Ttang2_7(index) = T(j);
            Ptang2_7(index) = Psatw(j);
            break
        end
    end
    Pline2_7(index,:)= H2O_gas_PC27(index).*air_press_AC7(index)/(10^6) + G2_7(index) * (T(:)-air_temp_AC7(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_7(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_7=indexSAC2_7+1;
    %     end
    Psac2_7(index,:) = Ptang2_7(index)+G2_7(index)*(T(:)-Ttang2_7(index)); %tangent threshold curve
    
    if Pline2_7(index,1) >= Psac2_7(index,1)
        indexSAC2_7 = indexSAC2_7+1;
        if RHi7(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC7(index).^(-1)+a2w+a3w.*air_temp_AC7(index)+a4w.*air_temp_AC7(index).^2+a7w.*log(air_temp_AC7(index)));
            PH2Opers(index)=H2O_gas_PC27(index).*air_press_AC7(index)/(10^6);
            RHw7(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw7(index)<100
                indexpers2_7 = indexpers2_7+1;
            end
        end
    end
end

for index=1:length(air_press_AC8)
    G1_8(index)= air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    for j=1:length(T)-1
        if G1_8(index)<0
            Ttang1_8(index) = NaN;
            Ptang1_8(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G1_8(index)
            Ttang1_8(index) = T(j);
            Ptang1_8(index) = Psatw(j);
            break
        end
    end
    Pline1_8(index,:)= H2O_gas_PC28(index).*air_press_AC8(index)/(10^6) + G1_8(index) * (T(:)-air_temp_AC8(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline1_8(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC1_8=indexSAC1_8+1;
    %     end
    Psac1_8(index,:) = Ptang1_8(index)+G1_8(index)*(T(:)-Ttang1_8(index)); %tangent threshold curve
    
    if Pline1_8(index,1) >= Psac1_8(index,1)
        indexSAC1_8 = indexSAC1_8+1;
        if RHi8(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC8(index).^(-1)+a2w+a3w.*air_temp_AC8(index)+a4w.*air_temp_AC8(index).^2+a7w.*log(air_temp_AC8(index)));
            PH2Opers(index)=H2O_gas_PC28(index).*air_press_AC8(index)/(10^6);
            RHw8(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw8(index)<100
                indexpers1_8 = indexpers1_8+1;
            end
        end
    end
    
    G2_8(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
    for j=1:length(T)-1
        if G2_8(index)<0
            Ttang2_8(index) = NaN;
            Ptang2_8(index) = NaN;
            break;
        end
        if dPsatw_dTsatw(j) > G2_8(index)
            Ttang2_8(index) = T(j);
            Ptang2_8(index) = Psatw(j);
            break
        end
    end
    Pline2_8(index,:)= H2O_gas_PC28(index).*air_press_AC8(index)/(10^6) + G2_8(index) * (T(:)-air_temp_AC8(index)); %Curve that goes through the studied point
    %     if isempty(intersections(T, Pline2_8(index,:), Tsatw, Psatw, ROBUST))==0
    %         indexSAC2_8=indexSAC2_8+1;
    %     end
    Psac2_8(index,:) = Ptang2_8(index)+G2_8(index)*(T(:)-Ttang2_8(index)); %tangent threshold curve
    
    if Pline2_8(index,1) >= Psac2_8(index,1)
        indexSAC2_8 = indexSAC2_8+1;
        if RHi8(index)>100
            eswpers(index)=exp(a1w.*air_temp_AC8(index).^(-1)+a2w+a3w.*air_temp_AC8(index)+a4w.*air_temp_AC8(index).^2+a7w.*log(air_temp_AC8(index)));
            PH2Opers(index)=H2O_gas_PC28(index).*air_press_AC8(index)/(10^6);
            RHw8(index)=PH2Opers(index)./eswpers(index)*100;
            if RHw8(index)<100
                indexpers2_8 = indexpers2_8+1;
            end
        end
    end
end

percentSAC1_1=indexSAC1_1/length(air_temp_AC1)*100;
percentSAC2_1=indexSAC2_1/length(air_temp_AC1)*100;
percentSAC1_2=indexSAC1_2/length(air_temp_AC2)*100;
percentSAC2_2=indexSAC2_2/length(air_temp_AC2)*100;
percentSAC1_3=indexSAC1_3/length(air_temp_AC3)*100;
percentSAC2_3=indexSAC2_3/length(air_temp_AC3)*100;
percentSAC1_4=indexSAC1_4/length(air_temp_AC4)*100;
percentSAC2_4=indexSAC2_4/length(air_temp_AC4)*100;
percentSAC1_5=indexSAC1_5/length(air_temp_AC5)*100;
percentSAC2_5=indexSAC2_5/length(air_temp_AC5)*100;
percentSAC1_6=indexSAC1_6/length(air_temp_AC6)*100;
percentSAC2_6=indexSAC2_6/length(air_temp_AC6)*100;
percentSAC1_7=indexSAC1_7/length(air_temp_AC7)*100;
percentSAC2_7=indexSAC2_7/length(air_temp_AC7)*100;
percentSAC1_8=indexSAC1_8/length(air_temp_AC8)*100;
percentSAC2_8=indexSAC2_8/length(air_temp_AC8)*100;

%%Part D: persistent contrails
percentpers1_1=indexpers1_1/length(air_temp_AC1)*100;
percentpers2_1=indexpers2_1/length(air_temp_AC1)*100;
percentpers1_2=indexpers1_2/length(air_temp_AC2)*100;
percentpers2_2=indexpers2_2/length(air_temp_AC2)*100;
percentpers1_3=indexpers1_3/length(air_temp_AC3)*100;
percentpers2_3=indexpers2_3/length(air_temp_AC3)*100;
percentpers1_4=indexpers1_4/length(air_temp_AC4)*100;
percentpers2_4=indexpers2_4/length(air_temp_AC4)*100;
percentpers1_5=indexpers1_5/length(air_temp_AC5)*100;
percentpers2_5=indexpers2_5/length(air_temp_AC5)*100;
percentpers1_6=indexpers1_6/length(air_temp_AC6)*100;
percentpers2_6=indexpers2_6/length(air_temp_AC6)*100;
percentpers1_7=indexpers1_7/length(air_temp_AC7)*100;
percentpers2_7=indexpers2_7/length(air_temp_AC7)*100;
percentpers1_8=indexpers1_8/length(air_temp_AC8)*100;
percentpers2_8=indexpers2_8/length(air_temp_AC8)*100;

%% USELESS PART

% for index=1:length(Pwatervapour)
%     RHi(:,index)=Pwatervapour(index)./esi*100; %Saturation for water, search for 100%
% end
%
% for indexRH=1:length(RHi)
%     for indexP=1:length(Pwatervapour)
%         if RHi(indexRH,indexP)>100
%             Psati(indexRH)=(Pwatervapour(indexP)+Pwatervapour(indexP-1))/2;
%             Tsati(indexRH)=T(indexRH);
%             break;
%         end
%     end
% end


% for index=1:length(Pwatervapour)
%     RHw(:,index)=Pwatervapour(index)./esw*100; %Saturation for water, search for 100%
% end
%
% for indexRH=1:length(RHw)
%     for indexP=1:length(Pwatervapour)
%         if RHw(indexRH,indexP)>100
%             Psatw(indexRH)=(Pwatervapour(indexP)+Pwatervapour(indexP-1))/2;
%             Tsatw(indexRH)=T(indexRH);
%             break;
%         end
%     end
% end