cls
del dns.bat
del dc_login.ps1
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/dc_login.ps1
cls







Powershell.exe -executionpolicy remotesigned -File dc_login.ps1

TIMEOUT /T 10
del domain_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/domain_test.bat
cls
domain_test.bat







