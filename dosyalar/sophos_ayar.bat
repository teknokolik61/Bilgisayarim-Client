@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn_04.02.2024.tgb

::SOPHOS IMPORT
%SYSTEMDRIVE%\bilgisayarim\bin\Basterzi_Vpn_04.02.2024.tgb
CLS

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
call :Color 6 "   AYARLARINI IMPORT EDILDI" &echo:
echo.
echo ============================================================================================
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