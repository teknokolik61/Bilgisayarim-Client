del sophos.bat

@echo off

echo ayar%sunucuvpn%.txt
SET Sophos_Ayar_K=\Sophos\Sunucu\ayar%sunucuvpn%.txt
IF "ayar%sunucuvpn%.txt" == "Sophos_Ayar_K" GOTO X86
IF NOT EXIST "%ProgramFiles(x86)%\%Sophos_Ayar_K%" GOTO SOPHOSAYAR





:X86
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
echo SUNUCU SOPHOS V : ayar%sunucuvpn%
echo ============================================================================================
echo.
echo.
echo.
echo.
call :Color 2 "    GUNCEL SUNUCU SOPHOS AYARLARI MEVCUT " &echo:
call :Color 2 "   KONTROL SAYFASINA YONLENDIRILIYORSUNUZ " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
del sophos_import_kontrol.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_import_kontrol.bat
sophos_import_kontrol.bat

:SOPHOSAYAR
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
del Sunucu_Vpn.7z
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/Sunucu_Vpn.7z

cls

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7zG.exe" e Sunucu_Vpn.7z "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r

del Sunucu_Vpn.7z
::SOPHOS IMPORT


xcopy /h "%SYSTEMDRIVE%\Bilgisayarim\bin\Sunucu_Vpn.scx" "%ProgramFiles(x86)%\Sophos\Connect\import"
cd %ProgramFiles(x86)%\Sophos\
mkdir Sunucu
xcopy /h "%SYSTEMDRIVE%\Bilgisayarim\bin\ayar%sunucuvpn%.txt" "%ProgramFiles(x86)%\Sophos\Sunucu" 
cd %SYSTEMDRIVE%\Bilgisayarim\bin
del Sunucu_Vpn.scx
del ayar%sunucuvpn%.txt

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
echo SUNUCU SOPHOS V : ayar%sunucuvpn%
echo ============================================================================================
echo.
echo.
echo.
echo.
call :Color 2 "    SOPHOS SUNUCU AYARLARI IMPORT EDILDI " &echo:
call :Color 2 "   KONTROL SAYFASINA YONLENDIRILIYORSUNUZ " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
del sophos_import_kontrol.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_import_kontrol.bat
sophos_import_kontrol.bat
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