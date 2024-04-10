del baslangic.bat
del dns.bat
del ad_user_kontrol.bat
cls
  @ECHO OFF

SET OFIS="basterzi"
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
echo  ˜žLEMCI M˜MAR˜ : %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo.
call :Color 6 "  [1] SOPHOS CLIENT KURULUMU" &echo:
echo.
call :Color 9 "  [2] DOMAIN KATILMAK (KURULMADI)" &echo:
echo.
call :Color 2 "  [3] DESKTOP MANAGER INSTALL(KURULMADI) " &echo:
echo.
call :Color 8 "  [4] SANDIK KURULUMU (KURULMADI)" &echo:
echo.
call :Color 4 "  [9] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
choice /C:12349 /N /M "SE€˜M˜N˜Z˜ YAPIN :"

if errorlevel 9 goto :CIKIS
if errorlevel 1 goto :SOPHOS
:DOMAIN
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del dc_login.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/basterzi/dc_login.bat
dc_login.bat
..\setup.bat

::===============================================================================================================
:SOPHOS
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del sophos.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/sophos.bat
sophos.bat
..\setup.bat
pause

::===============================================================================================================
:CIKIS
echo MSGBOX "Güle Güle"  > %systemdrive%\bilgisayarim\bin\TEMPmessage.vbs
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
