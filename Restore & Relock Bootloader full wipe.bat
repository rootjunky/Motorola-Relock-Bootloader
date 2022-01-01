::Set our default parameters
@echo off

SET fastboot=fastboot.exe
%fastboot% devices
%fastboot% oem lock begin
%fastboot% flash partition gpt.bin
%fastboot% flash motoboot motoboot.img
%fastboot% flash logo Moto-logo.bin
%fastboot% flash boot boot.img
%fastboot% flash recovery recovery.img
%fastboot% flash system system.img_sparsechunk1
%fastboot% flash system system.img_sparsechunk2
%fastboot% flash system system.img_sparsechunk3
%fastboot% flash modem NON-HLOS.bin
%fastboot% erase modemst1
%fastboot% erase modemst2
%fastboot% flash fsg fsg.mbn
%fastboot% erase cache
%fastboot% erase userdata
%fastboot% oem lock
pause