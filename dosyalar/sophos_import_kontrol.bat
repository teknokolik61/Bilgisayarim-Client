del sophos_ayar.bat
cls
@echo off
SET Dns_Connect=Sophos\Connect\ayar.txt
IF "%PROCESSOR_ARCHITECTURE%" == "x86" GOTO X86_PROG
IF NOT EXIST "%ProgramFiles(x86)%\%Dns_Connect%" GOTO INSTALL
cd %ProgramFiles(x86)%\Sophos\Connect
del ayar.txt
cd %SYSTEMDRIVE%\Bilgisayarim\bin
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
call :Color 2 "   VPN AYARLARI IMPORT EDILMIS " &echo:
call :Color 2 "   Ana Sayfaya Yonlendiriliyorsunuz " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
del sophos_ayar_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_test.bat
cls
sophos_ayar_test.bat

:X86_PROG
IF NOT EXIST "%ProgramFiles%\%Sophos_Connect%" GOTO INSTALL
cd %ProgramFiles(x86)%\Sophos\Connect
del ayar.txt
cd %SYSTEMDRIVE%\Bilgisayarim\bin
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
call :Color 2 "   VPN AYARLARI IMPORT EDILMIS " &echo:
call :Color 2 "   Ana Sayfaya Yonlendiriliyorsunuz " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5
del sophos_ayar_test.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar_test.bat
cls
sophos_ayar_test.bat

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
call  :Color 9 "              VPN AYARLARINDA SORUN MEVCUT" &echo:
call  :Color 9 "      VPN AYARLARI SAYFASINA YONLENDIRILIYORSUNUZ." &echo:
call  :Color 4 "  LUTFEN ISTENEN SIFREYI DOGRU YAZDIGINIZA EMIN OLUNUZ" &echo:
echo.
echo ============================================================================================
TIMEOUT /T 10
del sophos_ayar.bat
%SYSTEMDRIVE%\Bilgisayarim\Bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos_ayar.bat
cls
sophos_ayar.bat


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