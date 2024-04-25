::del ..\Kurulum.bat


  ::@chcp 65001
  ::#########################################################################
  @ECHO OFF
  @ECHO BEKLEYIN PROGRAM ACILIYOR

  ::#########################################################################




  ::#########################################################################
  :KURULUMMODUSEC
  CLS
  ECHO.
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
echo        VERSION: %Version%
echo  ISLEMCI MIMARISI: %PROCESSOR_ARCHITECTURE%
echo          PC ADI : %computername%
echo ============================================================================================
echo.
call :Color 2 "      LUTFEN LISANS KODUNUZU GIRINIZ LISANS KODUNUZU BILMIYORSANIZ" &echo:
call :Color 2 "         SISTEM YONETICISI ILE ILETISIME GECIN VEYA CIKIS YAPIN" &echo:
echo.
echo ============================================================================================
echo.
call :Color 4 "                           [5] CIKIS" &echo:
echo.
echo ============================================================================================
  ECHO.
  SET UOA=UOA
  SET KURULUMMODU=ERR
  SET /P KURULUMMODU=LUTFEN LISANS KODUNUZU GIRINIZ:
  IF NOT %UOA%==UOA EXIT
  IF %KURULUMMODU%==mirac ECHO KURULUM MODU 1 & GOTO :KODHATA
  IF %KURULUMMODU%==%KURULUMMODU% ECHO KURULUM MODU 1 & GOTO :LISANS
::  IF %KURULUMMODU%==BASTERZIFATMA ECHO KURULUM BASTERZI HUKUK BUROSU & GOTO :BASTERZI
::  IF %KURULUMMODU%==basterzifatma ECHO KURULUM BASTERZI HUKUK BUROSU & GOTO :BASTERZI
::  IF %KURULUMMODU%==KACKARHUKUK ECHO KURULUM KACKAR HUKUK BUROSU & GOTO :KACKAR
  IF %KURULUMMODU%==5 ECHO CIKIS & GOTO :CIKIS
  IF %KURULUMMODU%==ERR GOTO :KURULUMMODUSEC
  
  :KODHATA
echo                      LISANS KODUNUZ HATALI
timeout /10 
GOTO :KURULUMMODUSEC
    
  :LISANS
cd %SYSTEMDRIVE%\Bilgisayarim\bin\
del lisans.bat
del %KURULUMMODU%.7z 
::%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://raw.githubusercontent.com/teknokolik61/Bilgisayarim-Client/main/dosyalar/menu.bat
%SYSTEMDRIVE%\bilgisayarim\bin\wget.exe https://www.miracozturk.com.tr/lisans/%KURULUMMODU%.7z

"%SYSTEMDRIVE%\bilgisayarim\bin\7-Zip\7zG.exe" e %KURULUMMODU%.7z "*.*" -o%SYSTEMDRIVE%\bilgisayarim\bin -y -r
del %KURULUMMODU%.7z

%KURULUMMODU%.bat
..\kurulum.bat
pause
  
  
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
