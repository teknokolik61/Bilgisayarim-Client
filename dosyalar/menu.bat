del baslangic.bat

@echo off

SET menu1=\bilgisayarim\bin\menu1.txt
IF "menu1.txt" == "menu1" GOTO menu11
IF NOT EXIST "%SYSTEMDRIVE%\%menu1%" GOTO menu12

:menu11
IF NOT EXIST "%SYSTEMDRIVE%\%menu1%" GOTO menu11
echo menu1 var

SET menu2=\bilgisayarim\bin\menu2.txt
IF "menu2.txt" == "menu2" GOTO menu21
IF NOT EXIST "%SYSTEMDRIVE%\%menu2%" GOTO menu22

:menu21
IF NOT EXIST "%SYSTEMDRIVE%\%menu2%" GOTO menu21
echo menu2 var

SET menu3=\bilgisayarim\bin\menu3.txt
IF "menu3.txt" == "menu3" GOTO menu31
IF NOT EXIST "%SYSTEMDRIVE%\%menu3%" GOTO menu32

:menu31
IF NOT EXIST "%SYSTEMDRIVE%\%menu3%" GOTO menu31
echo menu3 var

SET menu4=\bilgisayarim\bin\menu4.txt
IF "menu4.txt" == "menu4" GOTO menu41
IF NOT EXIST "%SYSTEMDRIVE%\%menu4%" GOTO menu42

:menu41
IF NOT EXIST "%SYSTEMDRIVE%\%menu4%" GOTO menu41
echo menu4 var

SET menu5=\bilgisayarim\bin\menu5.txt
IF "menu5.txt" == "menu5" GOTO menu51
IF NOT EXIST "%SYSTEMDRIVE%\%menu5%" GOTO menu52

:menu51
IF NOT EXIST "%SYSTEMDRIVE%\%menu4%" GOTO menu51
echo menu5 var

SET menu6=\bilgisayarim\bin\menu6.txt
IF "menu6.txt" == "menu6" GOTO menu61
IF NOT EXIST "%SYSTEMDRIVE%\%menu6%" GOTO menu62

pause
:menu12
del kurulum1.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum1.bat
kurulum1.bat

:menu22
del kurulum2.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum2.bat
kurulum2.bat

:menu32
del kurulum3.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum3.bat
kurulum3.bat

:menu42
del kurulum4.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum4.bat
kurulum4.bat

:menu52
del kurulum5.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum5.bat
kurulum5.bat

:menu62
del kurulum6.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/%OFIS%/kurulum6.bat
kurulum6.bat
cls
pause