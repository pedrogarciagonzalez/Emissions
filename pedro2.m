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
    UTC1(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon1(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat1(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC1(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val1(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC1(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val1(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC11(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val1(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC1(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val1(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC1(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val1(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC1(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val1(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC1(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val1(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC1(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val1(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC1(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val1(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC1(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val1(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC1(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val1(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC1(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val1(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC21(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err1(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val1(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat1(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019021102051591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC2(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon2(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat2(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC2(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val2(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC2(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val2(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC12(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val2(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC2(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val2(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC2(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val2(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC2(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val2(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC2(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val2(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC2(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val2(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC2(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val2(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC2(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val2(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC2(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val2(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC2(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val2(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC22(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err2(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val2(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat2(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019021122212591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC3(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon3(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat3(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC3(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val3(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC3(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val3(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC13(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val3(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC3(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val3(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC3(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val3(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC3(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val3(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC3(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val3(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC3(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val3(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC3(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val3(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC3(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val3(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC3(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val3(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC3(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val3(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC23(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err3(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val3(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat3(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019021216295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC4(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon4(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat4(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC4(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val4(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC4(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val4(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC14(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val4(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC4(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val4(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC4(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val4(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC4(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val4(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC4(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val4(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC4(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val4(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC4(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val4(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC4(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val4(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC4(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val4(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC4(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val4(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC24(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err4(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val4(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat4(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019042914412591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC5(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon5(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat5(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC5(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val5(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC5(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val5(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC15(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val5(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC5(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val5(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC5(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val5(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC5(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val5(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC5(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val5(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC5(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val5(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC5(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val5(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC5(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val5(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC5(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val5(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC5(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val5(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC25(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err5(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val5(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat5(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019043004153591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC6(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon6(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat6(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC6(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val6(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC6(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val6(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC16(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val6(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC6(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val6(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC6(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val6(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC6(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val6(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC6(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val6(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC6(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val6(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC6(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val6(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC6(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val6(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC6(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val6(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC6(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val6(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC26(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err6(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val6(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat6(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019021011295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC7(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon7(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat7(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC7(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val7(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC7(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val7(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC17(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val7(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC7(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val7(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC7(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val7(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC7(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val7(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC7(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val7(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC7(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val7(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC7(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val7(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC7(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val7(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC7(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val7(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC7(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val7(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC27(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err7(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val7(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat7(index)=IAGOS(31+(index-1)*numbervariables,:);
end

IAGOSdata=fopen('IAGOS_timeseries_2019021011295591.txt','r');
IAGOS=fscanf(IAGOSdata,'%g');
fclose(IAGOSdata);

for index=1:length(IAGOS)/numbervariables
    UTC8(index)=IAGOS(1+(index-1)*numbervariables,:);
    lon8(index)=IAGOS(2+(index-1)*numbervariables,:);
    lat8(index)=IAGOS(3+(index-1)*numbervariables,:);
    baro_alt_AC8(index)=IAGOS(4+(index-1)*numbervariables,:);
    baro_alt_AC_val8(index)=IAGOS(5+(index-1)*numbervariables,:);
    radio_alt_AC8(index)=IAGOS(6+(index-1)*numbervariables,:);
    radio_alt_AC_val8(index)=IAGOS(7+(index-1)*numbervariables,:);
    gps_alt_AC18(index)=IAGOS(8+(index-1)*numbervariables,:);
    gps_alt_AC_val8(index)=IAGOS(9+(index-1)*numbervariables,:);
    air_press_AC8(index)=IAGOS(10+(index-1)*numbervariables,:);
    air_press_AC_val8(index)=IAGOS(11+(index-1)*numbervariables,:);
    air_speed_AC8(index)=IAGOS(12+(index-1)*numbervariables,:);
    air_speed_AC_val8(index)=IAGOS(13+(index-1)*numbervariables,:);
    ground_speed_AC8(index)=IAGOS(14+(index-1)*numbervariables,:);
    ground_speed_AC_val8(index)=IAGOS(15+(index-1)*numbervariables,:);
    air_temp_AC8(index)=IAGOS(16+(index-1)*numbervariables,:);
    air_temp_AC_val8(index)=IAGOS(17+(index-1)*numbervariables,:);
    air_stag_temp_AC8(index)=IAGOS(18+(index-1)*numbervariables,:);
    air_stag_temp_AC_val8(index)=IAGOS(19+(index-1)*numbervariables,:);
    wind_dir_AC8(index)=IAGOS(20+(index-1)*numbervariables,:);
    wind_dir_AC_val8(index)=IAGOS(21+(index-1)*numbervariables,:);
    wind_speed_AC8(index)=IAGOS(22+(index-1)*numbervariables,:);
    wind_speed_AC_val8(index)=IAGOS(23+(index-1)*numbervariables,:);
    zon_wind_AC8(index)=IAGOS(24+(index-1)*numbervariables,:);
    zon_wind_AC_val8(index)=IAGOS(25+(index-1)*numbervariables,:);
    mer_wind_AC8(index)=IAGOS(26+(index-1)*numbervariables,:);
    mer_wind_AC_val8(index)=IAGOS(27+(index-1)*numbervariables,:);
    H2O_gas_PC28(index)=IAGOS(28+(index-1)*numbervariables,:);
    H2O_gas_PC2_err8(index)=IAGOS(29+(index-1)*numbervariables,:);
    H2O_gas_PC2_val8(index)=IAGOS(30+(index-1)*numbervariables,:);
    H2O_gas_PC2_stat8(index)=IAGOS(31+(index-1)*numbervariables,:);
end

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
Tfreeze=273.15-38; %-38ºC in K

%% OBTENTION OF SATURATION LINE

%Saturation line for water
T=213.15:0.005:263.15; %K
Pwatervapour=0:0.005:50; %Pa
a1w=-6096.9385;
a2w=21.2409632;
a3w=-0.02711193;
a4w=0.00001673952;
a7w=2.433502;
esw=exp(a1w.*T.^(-1)+a2w+a3w.*T+a4w.*T.^2+a7w.*log(T));

for index=1:length(Pwatervapour)
    RHw(:,index)=Pwatervapour(index)./esw*100; %Saturation for water, search for 100%
end

for indexRH=1:length(RHw)
    for indexP=1:length(Pwatervapour)
        if RHw(indexRH,indexP)>100
            Psatw(indexRH)=Pwatervapour(indexP);
            Tsatw(indexRH)=T(indexRH);
            break;
        end
    end
end

%Saturation line for ice
a1i=-6024.5282;
a2i=29.32707;
a3i=0.010613868;
a4i=-0.000013198825;
a7i=-0.49382577;
esi=exp(a1i.*T.^(-1)+a2i+a3i.*T+a4i.*T.^2+a7i.*log(T));

for index=1:length(Pwatervapour)
    RHi(:,index)=Pwatervapour(index)./esi*100; %Saturation for water, search for 100%
end

for indexRH=1:length(RHi)
    for indexP=1:length(Pwatervapour)
        if RHi(indexRH,indexP)>100
            Psati(indexRH)=Pwatervapour(indexP);
            Tsati(indexRH)=T(indexRH);
            break;
        end
    end
end

%Plot of saturation lines
figure(1)
plot(Tsatw-273.15,Psatw)
hold on
plot(Tsati-273.15,Psati)
title('Saturation lines')
xlabel('T (ºC)')
ylabel('Water vapour pressure (Pa)')
legend('Water','Ice')

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

% for index=1:length(air_temp_AC1)
%     if air_temp_AC1(index)
%         indexISSR1=indexISSR1+1;
%     end
% end
%% PART B: Temperature threshold
% Temperature threshold of -38ºC=235.15K according to SAC

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

%%%% PROBLEM: I THINK THAT SOME VALUES OF air_temp_AC ARE -9999 FOR SOME
%%%% REASON, ASK

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

for index=1:length(air_press_AC1)
    G1_1(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_1(index)=air_press_AC1(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC2)
    G1_2(index)=air_press_AC2(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_2(index)=air_press_AC2(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC3)
    G1_3(index)=air_press_AC3(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_3(index)=air_press_AC3(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC4)
    G1_4(index)=air_press_AC4(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_4(index)=air_press_AC4(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC5)
    G1_5(index)=air_press_AC5(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_5(index)=air_press_AC5(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC6)
    G1_6(index)=air_press_AC6(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_6(index)=air_press_AC6(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC7)
    G1_7(index)=air_press_AC7(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_7(index)=air_press_AC7(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

for index=1:length(air_press_AC8)
    G1_8(index)=air_press_AC8(index)*cp*Mair/MH2O*EIH2O/((1-eff1)*LHV); %Slope of aircraft 1
    G2_8(index)=air_press_AC8(index)*cp*Mair/MH2O*EIH2O/((1-eff2)*LHV); %Slope of aircraft 2
end

% numberSAC=0;
% for index=1:
%     if G1>
%         numberSAC1=numberSAC1+1;
%     end
%     if G2>
%         
%     end
% end
%% PART D: Contrail formation
