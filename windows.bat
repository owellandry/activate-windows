@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM Companyname: 
REM Productname: 
REM Filedescription: 
REM Copyrights: 
REM Trademarks: 
REM Originalname: 
REM Comments: 
REM Productversion:  0. 0. 0. 0
REM Fileversion:  0. 0. 0. 0
REM Internalname: 
REM ExeType: ghost
REM Architecture: x64
REM Appicon: 
REM AdministratorManifest: No
REM  QBFC Project Options End
@ECHO ON
@echo off 

:menu 

cls 

color b 

title ACTIVACION DE WINDOWS

echo.  

echo BIENVENIDO %USERNAME% 

ECHO. 

ECHO ELIJE TU VERSION DE WINDOWS... 

ECHO. 

ECHO ======================================== === 

ECHO === 1. Windows 10/11 Home:                  ===

ECHO === 2. Windows 10/11 Home Single Lenguage:  ===

ECHO === 3. Windows 10/11 Pro:                   ===

ECHO === 4. Windows 10/11 Pro N:                 ===

ECHO === 5. Windows 10/11 Education:             === 

ECHO === 6. Windows 10/11 Education N:           === 

ECHO === 7. Windows 10/11 Enterprise:            ===

ECHO === 8. Windows 10/11 Enterprise N:          ===

ECHO === 9. Windows 10/11 Enterprise G:          ===

ECHO === 10. Windows 10/11 Enterprise G N:       ===

ECHO === 11. Windows 10/11 Workstations:         === 

ECHO === 12. Windows 10/11 Ultimate:             === 

ECHO === 0. SALIR                             === 

ECHO ======================================== === 

ECHO. 

SET /P ver= QUE VERSION TIENES? 

if %ver%==1 goto 11home
if %ver%==2 goto 11hsl
if %ver%==3 goto 11pro
if %ver%==4 goto 11pron
if %ver%==5 goto 11edu
if %ver%==6 goto 11edun
if %ver%==7 goto 11exter
if %ver%==8 goto 11extern
if %ver%==9 goto 11exterg
if %ver%==10 goto 11extergn
if %ver%==11 goto 11works
if %ver%==12 goto 11ultimate
if %ver%==0 goto salir



:11home 
call slmgr.vbs -upk
call slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu 

:11hsl 
call slmgr.vbs -upk
call slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu

:11pro 
call slmgr.vbs -upk
call slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11pron 
call slmgr.vbs -upk
call slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11edu 
call slmgr.vbs -upk
call slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11edun 
call slmgr.vbs -upk
call slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11exter 
call slmgr.vbs -upk
call slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11extern 
call slmgr.vbs -upk
call slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
call slmgr /ato
goto menu


:11exterg 
call slmgr.vbs -upk
call slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11extergn 
call slmgr.vbs -upk
call slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11works 
call slmgr.vbs -upk
call slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:11ultimate 
call slmgr.vbs -upk
call slmgr /ipk Q269N-WFGWX-YVC9B-4J6C9-T83GX
call slmgr /ato
msg * FELICIDADES, %USERNAME% ACABAS DE ACTIVAR TU WINDOWS  
goto menu


:salir 
msg * GRACIAS POR USAR MI PROGRAMA...  ATT: OWELL :D 
exit 