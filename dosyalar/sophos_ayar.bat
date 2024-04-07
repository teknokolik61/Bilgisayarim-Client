@echo off

cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
del Sunucu_Vpn.zip
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Sunucu_Vpn.zip

cls

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7z.exe" e Sunucu_Vpn.zip "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r

del Sunucu_Vpn.zip
::SOPHOS IMPORT

cd %ProgramFiles(x86)%\Sophos\Connect\import
del ayar.txt
cd %SYSTEMDRIVE%\Bilgisayarim\bin

xcopy /h "%SYSTEMDRIVE%\Bilgisayarim\bin\Sunucu_Vpn.scx" "%ProgramFiles(x86)%\Sophos\Connect\import"
xcopy /h "%SYSTEMDRIVE%\Bilgisayarim\bin\ayar.txt" "%ProgramFiles(x86)%\Sophos\Connect\import" 
del Sunucu_Vpn.scx
del ayar.txt
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
call :Color 2 "   Ayarlar import edildi " &echo:
call :Color 2 "   Kontrol Sayfaya Yonlendiriliyorsunuz " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 10
del sophos_import_kontrol.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_import_kontrol.bat
sophos_import_kontrol.bat



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



cls




