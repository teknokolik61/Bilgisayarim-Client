del kurulum2.bat
del ad_user_kontrol.bat
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/menu/menu2.txt



cls
  @ECHO OFF

:MENU
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
echo  ˜žLEMCI M˜MAR˜ : %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
echo.
call :Color 3 "  [1] SOPHOS CLIENT KURULUMU" &   call :Color 7 "(KURULDU) " &echo:
echo.
call :Color 9 "  [2] DOMAIN KATILMAK" &   call :Color 7 "(KURULDU) " &echo:
echo.
call :Color 5 "  [3] DESKTOP MANAGER INSTALL" &   call :Color 2 "(BU MENU KURULACAK) " &echo:
echo.
call :Color 6 "  [4] SANDIK KURULUMU" &   call :Color 4 "(KURULMADI) " &echo:
echo.
call :Color 4 "  [9] CIKIS" &echo:
echo.
echo ============================================================================================
echo.
SET UOA=UOA
SET KURULUMMODU=ERR
  SET /P KURULUMMODU=LUTFEN SECINIZ (3 VEYA 9) :
  IF NOT %UOA%==UOA EXIT
  IF %KURULUMMODU%==3 ECHO KURULUM MODU & GOTO :DESKTOP
  IF %KURULUMMODU%==9 ECHO CIKIS MODU & GOTO :CIKIS
  IF %KURULUMMODU%==ERR GOTO :MENU
GOTO :MENU


::===============================================================================================================
:DESKTOP
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del desktop.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/basterzi/desktop.bat
desktop.bat
..\setup.bat
pause


::===============================================================================================================
:CIKIS
echo MSGBOX "Güle Güle"  > %systemdrive%\bilgisayarim\bin\TEMPmessage.vbs
TEMPmessage.vbs
mode con cols=55 lines=4
del kurulum3.bat

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
