@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
del Basterzi_Vpn.zip
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn.zip

cls

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7z.exe" e Basterzi_Vpn.zip "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r

del Basterzi_Vpn.zip
::SOPHOS IMPORT
%SYSTEMDRIVE%\bilgisayarim\bin\Basterzi_Vpn.tgb
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del Basterzi_Vpn.tgb

sophos_ayar_test.bat
cls
