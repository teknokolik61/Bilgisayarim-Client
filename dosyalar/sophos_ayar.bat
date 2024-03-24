@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Basterzi_Vpn_04.02.2024.tgb

::SOPHOS IMPORT
%SYSTEMDRIVE%\bilgisayarim\bin\Basterzi_Vpn_04.02.2024.tgb

cd %SYSTEMDRIVE%\Bilgisayarim

pause
CLS

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos_ayar_ok.bat
del Basterzi_Vpn_04.02.2024.tgb.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_ok.bat

sophos_ayar_ok.bat
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