del dns.bat

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
IF NOT EXIST "%Domain_Kontrol%" GOTO KUR45




:bilgisayarim.local
TIMEOUT /T 1
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
echo      DOMAIN ADI: %_fqdn2%
echo ============================================================================================
echo.
echo.
echo.
echo.
call :Color 2 "   DOMAIN LOGIN OLMUSTUR " &echo:
call :Color 2 "   DOMAIN USER KONTROL SAYFASINA YONLENDIRILIYORSUNUZ " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
del domain_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe %githuburl%dosyalar/domain_test.bat
cls
domain_test.bat

:KUR45
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
echo      DOMAIN ADI: %_fqdn2%
echo ============================================================================================
echo.
call  :Color 9 "              DOMAIN LOGIN OLUNAMAMISTIR." &echo:
call  :Color 9 "      DOMAIN LOGIN SAYFASINA YONLENDIRILIYORSUNUZ." &echo:
call  :Color 4 "  LUTFEN KULLANICI ADI SIFREYI DOGRU YAZDIGINIZA EMIN OLUNUZ" &echo:
echo.
echo ============================================================================================
TIMEOUT /T 10
cls
del dns.bat
del dc_login.ps1
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe %githuburl%dosyalar/%OFIS%/dc_login.ps1
cls

Powershell.exe -executionpolicy remotesigned -File dc_login.ps1

TIMEOUT /T 10
del domain_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe %githuburl%dosyalar/domain_test.bat
cls
domain_test.bat


::===============================================================================================================
:Color_Pre
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a") &exit /b
:color
pushd "%temp%"
<nul set /p ".=%DEL%" > "%~2" &findstr /v /a:%1 /R "^$" "%~2" nul &del "%~2" > nul 2>&1 &popd &exit /b
::===============================================================================================================
:consize
mode con: cols=%1 lines=%2
powershell -noprofile "$W=(get-host).ui.rawui; $B=$W.buffersize; $B.height=%3; $W.buffersize=$B"
goto :EOF
::===============================================================================================================
