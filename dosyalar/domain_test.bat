del dc_login.bat

@echo off
FOR /F "usebackq tokens=*" %%a IN (`wmic.exe COMPUTERSYSTEM GET DOMAIN /Value`) DO (
      @((ECHO %%a | findstr /i /c:"Domain=") && SET _str=%%a) > NUL 2>&1
)
FOR /F "tokens=2 delims=^=" %%a IN ("%_str%") do SET _computerDomain=%%a
SET _computerDomain=%_computerDomain: =%
SET _fqdn=%COMPUTERNAME%.%_computerDomain%
SET _fqdn2=%_computerDomain%
echo %_fqdn%
echo %_fqdn2%




SET Domain_Kontrol=bilgisayarim.local
IF "%_fqdn2%" == "bilgisayarim.local" GOTO bilgisayarim.local
IF NOT EXIST "%Domain_Kontrol%" GOTO INSTALL


:bilgisayarim.local

cls
echo ============================================================================================
set yy=%date:~-4%
set mm=%date:~-7,2%
set dd=%date:~-10,2%
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
echo                                                           	     %dd%.%mm%.%yy% ^- %mytime%
echo.
call :Color 6 "  Bilgisayarim Client Kurulumu %ver% - www.miracozturk.com.tr " &echo:
echo.
echo.
echo          OS ADI : %NameOS% %xOS%
echo        VERS˜iON : %Version%
echo  islemci Mimarisi: %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo.
echo.
echo.
call :Color 2 "   DOMAIN LOGIN OLMUSTUR " &echo:
call :Color 2 "   Ana Sayfaya Yonlendiriliyorsunuz " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
..\Kurulum.bat

:INSTALL
echo ============================================================================================
set yy=%date:~-4%
set mm=%date:~-7,2%
set dd=%date:~-10,2%
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
echo                                                           	     %dd%.%mm%.%yy% ^- %mytime%
echo.
call :Color 6 "  Bilgisayarim Client Kurulumu %ver% - www.miracozturk.com.tr " &echo:
echo.
echo.
echo          OS ADI : %NameOS% %xOS%
echo        VERS˜YON : %Version%
echo  iSLEMCi MiMARiSi %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
call  :Color 9 "              DOMAIN LOGIN OLUNAMAMISTIR." &echo:
call  :Color 9 "      DOMAIN LOGIN SAYFASINA YONLENDIRILIYORSUNUZ." &echo:
call  :Color 4 "  LUTFEN KULLANICI ADI SIFREYI DOGRU YAZDIGINIZA EMIN OLUNUZ" &echo:
echo.
echo ============================================================================================
TIMEOUT /T 10
del dc_login.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/dc_login.bat
cls
dc_login.bat













pause