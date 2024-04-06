@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
del Basterzi_Vpn.zip
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn.zip

cls

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7z.exe" e Basterzi_Vpn.zip "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r

del Basterzi_Vpn.zip
::SOPHOS IMPORT

xcopy /h "%SYSTEMDRIVE%\Bilgisayarim\bin\Basterzi_Vpn.tgb" "%ProgramFiles(x86)%\Sophos\Connect\import" 
del Basterzi_Vpn.tgb

del sophos_ayar_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_test.bat
sophos_ayar_test.bat
cls
