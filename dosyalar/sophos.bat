cls
@echo off
SET Sophos_Connect=Sophos\Connect\scvpn.exe
IF "%PROCESSOR_ARCHITECTURE%" == "x86" GOTO X86_PROG
IF NOT EXIST "%ProgramFiles(x86)%\%Sophos_Connect%" GOTO INSTALL
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
echo        VERS˜YON : %Version%
echo  iSLEMCi MiMARiSi %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo Bilgisayariniza Sophos Connect Kurulu
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] AYARLARINI IMPORT ETMEK ICIN" &echo:
echo.
call :Color 9 "  [2] ANA MENU DONMEK ICIN" &echo:
echo.
call :Color 4 "  [3] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
choice /C:123 /N /M "SECIMINIZI YAPIN :"
if errorlevel 3 goto :CIKIS
if errorlevel 2 goto :ANAMENU
if errorlevel 1 goto :AYAR
cls
:X86_PROG
IF NOT EXIST "%ProgramFiles%\%Sophos_Connect%" GOTO INSTALL
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
echo        VERS˜YON : %Version%
echo  iSLEMCi MiMARiSi %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo Bilgisayariniza Sophos Connect Kurulu
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] AYARLARINI IMPORT ETMEK ICIN" &echo:
echo.
call :Color 9 "  [2] ANA MENU DONMEK ICIN" &echo:
echo.
call :Color 4 "  [3] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
choice /C:123 /N /M "SECIMINIZI YAPIN :"
if errorlevel 3 goto :CIKIS
if errorlevel 2 goto :ANAMENU
if errorlevel 1 goto :AYAR
cls
:INSTALL


<!-- : Begin batch script
@echo off
@setlocal DisableDelayedExpansion
cls
@set ver=v9.8
mode con cols=78 lines=6
title Bilgisayarim Client Mirac OZTURK %ver%
cd /d "%~dp0"
if "%~1"=="-suite" goto :MAINMENU
echo.
echo        Y™NET˜C˜ HAKLARI ETK˜NLET˜R˜L˜YOR...
echo.
echo			 ltfen bekleyin...
>nul 2>&1 reg add hkcu\software\classes\.Admin\shell\runas\command /f /ve /d "cmd /x /d /r set \"f0=%%2\"& call \"%%2\" %%3"& set _= %*
>nul 2>&1 fltmc|| if "%f0%" neq "%~f0" (cd.>"%temp%\runas.Admin" & start "%~n0" /high "%temp%\runas.Admin" "%~f0" "%_:"=""%" & exit /b)
>nul 2>&1 reg delete hkcu\software\classes\.Admin\ /f
::===============================================================================================================


:MAINMENU
cls
pushd %~dp0bin\
Powershell.exe -executionpolicy remotesigned -File disablex.ps1
call :consize 90 40 90 
call :Color_Pre
mode con cols=92 lines=35
center.exe kF5nJ4D92hfOpc8
color e
set "echoRed=powershell -NoProfile write-host -back Black -fore Red"
set "echoGreen=powershell -NoProfile write-host -back Black -fore Green"
set "echoGreen1=powershell -NoProfile write-host -back Green -fore Black"
set "echoYellow=powershell -NoProfile write-host -back Yellow -fore Black"
setlocal DisableDelayedExpansion
set Auto=0		  
set _Debug=0
set External=1
set ActWindows=1
set ActOffice=1
set AutoR2V=1
set vNextOverride=1
set Silent=0
set Logger=0
)
::===============================================================================================================
:NoProgArgs
set "_cmdf=%~f0"
if exist "%SystemRoot%\Sysnative\cmd.exe" if not defined _rel1 (
setlocal EnableDelayedExpansion
start %SystemRoot%\Sysnative\cmd.exe /c ""!_cmdf!" -wow %*"
exit /b
)
if exist "%SystemRoot%\SysArm32\cmd.exe" if /i %PROCESSOR_ARCHITECTURE%==AMD64 if not defined _rel2 (
setlocal EnableDelayedExpansion
start %SystemRoot%\SysArm32\cmd.exe /c ""!_cmdf!" -arm %*"
exit /b
)
if %External% EQU 1 if "%KMS_IP%"=="%_uIP%" set External=0
if %Silent% EQU 1 set Unattend=1
set "_run=nul"
if %Logger% EQU 1 set _run="%~dpn0_Silent.log"
if /i "%PROCESSOR_ARCHITECTURE%"=="amd64" set "xOS=x64"
if /i "%PROCESSOR_ARCHITECTURE%"=="x86" set "xOS=x86"
if /i "%PROCESSOR_ARCHITECTURE%"=="arm64" set "xOS=arm64"
for /f "tokens=6 delims=[]. " %%# in ('ver') do set NameOS=%%#
for /f "skip=2 tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName %_Nul6%') do if not errorlevel 1 set "NameOS=%%b"
) else (
for /f "tokens=* delims=" %%a in ('powershell -nop -c "(([WMISEARCHER]'Select Caption from Win32_OperatingSystem').Get()).Caption"') do set "NameOS=%%a"
)
for /f "tokens=* delims=" %%a in ('powershell -nop -c "(([WMISEARCHER]'Select Version from Win32_OperatingSystem').Get()).Version"') do set "Version=%%a"
title Bilgisayarim Client Mirac OZTURK %ver%
mode con cols=92 lines=35

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
call :Color 4 "   Sophos Connect Bilgisayarinizda Kurulu Degil Kuruluma gecilecektir " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del SophosConnect.msi
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/SophosConnect.msi

msiexec.exe /i %SYSTEMDRIVE%\Bilgisayarim\bin\SophosConnect /QN
Popd

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
echo        VERS˜YON : %Version%
echo  iSLEMCi MiMARiSi %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo Bilgisayariniza Sophos Connect Kurulmuştur.
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] AYARLARINI IMPORT ETMEK ICIN" &echo:
echo.
call :Color 9 "  [2] ANA MENU DONMEK ICIN" &echo:
echo.
call :Color 4 "  [3] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
choice /C:123 /N /M "SECIMINIZI YAPIN :"
if errorlevel 3 goto :CIKIS
if errorlevel 2 goto :ANAMENU
if errorlevel 1 goto :AYAR

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
