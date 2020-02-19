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