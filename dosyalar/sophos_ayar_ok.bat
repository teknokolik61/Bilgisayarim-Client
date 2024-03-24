@echo off
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos_ayar.bat

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
echo  ˜LEMCI M˜MAR˜ : %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
call :Color 6 "  [1] FULL KURULUM" &echo:
echo.
call :Color 6 "  [2] SOPHOS CLIENT KURULUMU" &echo:
echo.
call :Color 9 "  [3] DOMAIN KATILMAK" &echo:
echo.
call :Color 2 "  [4] DESKTOP MANAGER INSTALL" &echo:
echo.
call :Color 4 "  [5] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
choice /C:12345 /N /M "SE€˜M˜N˜Z˜ YAPIN :"
if errorlevel 5 goto :CIKIS
if errorlevel 4 goto :DESKTOP
if errorlevel 3 goto :DOMAIN
if errorlevel 2 goto :SOPHOS
if errorlevel 1 goto :FULL
pause




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