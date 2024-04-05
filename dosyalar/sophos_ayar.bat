@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
del Basterzi_Vpn.rar
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn.zip

pause

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7z.exe" e Basterzi_Vpn.zip "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r
pause

::SOPHOS IMPORT
%SYSTEMDRIVE%\bilgisayarim\bin\Basterzi_Vpn_04.02.2024.tgb
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del Basterzi_Vpn_04.02.2024.tgb
del sophos_ayar_ok.bat

%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_ok.bat
sophos_ayar_ok.bat


cls
