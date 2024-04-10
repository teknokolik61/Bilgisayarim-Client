@echo off
    SET OYUNEXE32="scgui.exe"
  SET OYUNEXE64="scgui.exe"
  
  SET EXE32=%OYUNEXE32% & SET EXE64=%OYUNEXE64%
  SETLOCAL EnableExtensions &   @ECHO OFF & color 0a & cls & SET EXE32=%EXE32:"=%  & SET EXE64=%EXE64:"=%
  FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE32%"') DO IF %%x == %EXE32% goto ZATENCALISIYOR
  FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE64%"') DO IF %%x == %EXE64% goto ZATENCALISIYOR
  GOTO DEVAM
  :ZATENCALISIYOR
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO 		SOPHOS CONNECT CALISIYOR LUTFEN BEKLEYIN & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  ECHO. & 
  TIMEOUT 5 >nul
  GOTO EKRANA_GETIR
  
  :EKRANA_GETIR
  CD C:\Program Files (x86)\Sophos\Connect\GUI
  START scgui.exe
  GOTO EKRANA_GETIR2
  
  :EKRANA_GETIR2
  CD C:\Program Files (x86)\Sophos\Connect\GUI
  START scgui.exe
  
  :DEVAM
  CD C:\Program Files (x86)\Sophos\Connect\GUI
  START scgui.exe
  :ZATENCALISIYOR