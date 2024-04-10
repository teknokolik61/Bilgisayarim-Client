del dc_login.bat

@echo off
FOR /F "usebackq tokens=*" %%a IN (`wmic.exe COMPUTERSYSTEM GET DOMAIN /Value`) DO (
      @((ECHO %%a | findstr /i /c:"Domain=") && SET _str=%%a) > NUL 2>&1
)
FOR /F "tokens=2 delims=^=" %%a IN ("%_str%") do SET _computerDomain=%%a
SET _computerDomain=%_computerDomain: =%
SET _fqdn=%COMPUTERNAME%.%_computerDomain%
SET _fqdnad=%LOGONSERVER%
echo %_fqdn%
echo %_fqdnad%




SET Ad_user_Kontrol=\\DCSRV
IF "%_fqdnad%" == "\\DCSRV" GOTO \\DCSRV
IF NOT EXIST "%Ad_user_Kontrol%" GOTO INSTALL


:\\DCSRV

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
call :Color 2 "   DOMAIN LOGIN OLMUSTUR " &echo:
call :Color 2 "   ANA SAYFAYA YONLENDIRILIYORSUNUZ(ASAMA 3 DEVAM EDINIZ). " &echo:
echo.
echo.
echo.
echo.
TIMEOUT /T 5

:INSTALL
ECHO MERHABA DOMAIN CONTROLERIN KULLANICI ADI ILE GIRIS YAPILMAMIS
ECHO BILGISAYARI YENIDEN BASLATIP FARKLI KULLANICI ADI OLARAK GIRIS YAPIN
ECHO VE SIZE VERILEN KULLANICI ADI VE SIFRE ILE GIRIS YAPINIZ
ECHO EGER KULLANICI ADI VE SIFRE ILE GIRIS YAPAMIYORSANIZ
ECHO WİNDOWS+U TUSUNE BASARAK ORADAKI ADIMLARI TAKIP EDEREK
ECHO KULLANICI ADI VE SIFRE ILE GIRIS YAPINIZ.
PAUSE

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
