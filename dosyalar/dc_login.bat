del dns.bat
del powershell.exe
del dc_login.ps1
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/powershell.exe
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/dc_login.ps1








Powershell.exe -executionpolicy remotesigned -File dc_login.ps1



PAUSE