@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn_04.02.2024.tgb

::SOPHOS IMPORT
%SYSTEMDRIVE%\bilgisayarim\bin\Basterzi_Vpn_04.02.2024.tgb
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del Basterzi_Vpn_04.02.2024.tgb
del sophos_ayar_ok.bat

%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_ok.bat
sophos_ayar_ok.bat


cls
