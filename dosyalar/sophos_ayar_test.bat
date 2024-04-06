del dns.exe
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe -t 1 -T 3 --no-check-certificate  https://10.10.12.4:6262/web_images/dns.exe
cls
@echo off
SET Dns_Connect=Bilgisayarim\bin\dns.exe
IF "%PROCESSOR_ARCHITECTURE%" == "x86" GOTO X86_PROG
IF NOT EXIST "%SYSTEMDRIVE%\%Dns_Connect%" GOTO INSTALL
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
echo AYARLAR IMPORT EDILMIS
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] KURULUMA DEVAM ETMEK ICIN" &echo:
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
if errorlevel 1 goto :ETKI
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
echo AYARLAR IMPORT EDILMIS
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] KURULUMA DEVAM ETMEK ICIN" &echo:
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
if errorlevel 1 goto :ETKI
cls

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
call  :Color 4 "                           SOPHOS CONNECT CALISMIYOR" &echo:
call  :Color 4 "      SOPHOS CONNECT ACIN VE KULLANICI ADI SIFRE GIRIS YAPIP TEKRAR DENEYIN" &echo:
call  :Color 4 "           SOPHOS CONNECT GIRIS YAPTIYSANIZ KURULAMA DEVAM EDIN" &echo:
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] KURULUMA DEVAM ETMEK ICIN" &echo:
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
if errorlevel 1 goto :KONTROL
cls

:KONTROL
cls
sophos_ayar_test.bat
cls

:ETKI
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del SophosConnect.msi
del sophos_ayar_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar.bat

sophos_ayar.bat
cls

:ANAMENU
..\Kurulum.bat






:CIKIS
echo MSGBOX "GULE GULE"  > %systemdrive%\bilgisayarim\bin\TEMPmessage.vbs
TEMPmessage.vbs
mode con cols=55 lines=4
echo.
echo Dosyalar temp dizininden siliniyor...
echo.



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