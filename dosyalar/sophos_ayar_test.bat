@echo off
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
echo BILGISAYARINIZDAN SOPHOS CONNECT GIRIS YAPINIZ.
echo yapınız GIRIS YAPTIKRAN SONRA ALT MENUDEN SECME ISLEMI YAPINIZ
echo.
echo ============================================================================================
echo.
call :Color 6 "  [1] Devam Etmek İcin" &echo:
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