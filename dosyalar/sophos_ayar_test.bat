del sophos_import_kontrol.bat
del login_img.gif
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe -t 1 -T 3 --no-check-certificate  https://10.10.9.11:8443/images/login/login_img.gif
cls
@echo off
SET Dns_Connect=Bilgisayarim\bin\login_img.gif
IF "%PROCESSOR_ARCHITECTURE%" == "x86" GOTO X86_PROG
IF NOT EXIST "%SYSTEMDRIVE%\%Dns_Connect%" GOTO KUR
del login_img.gif
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
call :Color 2 "   SOPHOS CONNECT AKTIF CALISIYOR " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
del dns.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe %githuburl%dosyalar/dns.bat
dns.bat
cls

:X86_PROG
IF NOT EXIST "%SYSTEMDRIVE%\%Dns_Connect%" GOTO KUR
del login_img.gif
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
call :Color 2 "   SOPHOS CONNECT AKTIF CALISIYOR " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
del dns.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe %githuburl%dosyalar/dns.bat
dns.bat
cls

:KUR
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
call  :Color 4 "                           SOPHOS CONNECT CALISMIYOR" &echo:
call  :Color 4 "      SOPHOS CONNECT ACIN VE KULLANICI ADI SIFRE GIRIS YAPIP TEKRAR DENEYIN" &echo:
call  :Color 4 "           SOPHOS CONNECT GIRIS YAPTIYSANIZ KURULAMA DEVAM EDIN" &echo:
echo.
echo ============================================================================================
echo.
TIMEOUT /T 10
cls
sophos_ayar_test.bat
cls

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