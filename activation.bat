@echo off
chcp 1251 > nul
title Ŕęňčâŕöč˙ Windows (ëĺăŕëüíŕ˙)
color 03
cls

:: Ďđîâĺđęŕ ďđŕâ ŕäěčíčńňđŕňîđŕ
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ă==========================================Ź
    echo Ś   ÇŔĎÓŃŇČŇĹ ÎŇ ČĚĹÍČ ŔÄĚČÍČŃŇĐŔŇÎĐŔ!    Ś
    echo L==========================================-
    pause
    exit
)

:menu
cls
echo ă==========================================Ź
echo Ś         ŔĘŇČÂŔÖČß WINDOWS                Ś
echo Ś==========================================Ś
echo Ś 1. Ââĺńňč ëčöĺíçčîííűé ęëţ÷              Ś
echo Ś 2. Ŕęňčâčđîâŕňü Windows                  Ś
echo Ś 3. Ďđîâĺđčňü ńňŕňóń ŕęňčâŕöčč            Ś
echo Ś 4. Âűőîä                                 Ś
echo L==========================================-
echo ========================================
echo Ńęđčďň đŕçđŕáîňŕí: [Developer Noir]
echo Âĺđńč˙: 1.0 (2025)
echo ========================================

set /p choice="Âűáĺđčňĺ äĺéńňâčĺ (1-4): "

if "%choice%"=="1" goto enter_key
if "%choice%"=="2" goto activate
if "%choice%"=="3" goto check_status
if "%choice%"=="4" exit
goto menu

:enter_key
cls
echo ă==========================================Ź
echo Ś       ÂÂÎÄ ËČÖĹÍÇČÎÍÍÎĂÎ ĘËŢ×Ŕ           Ś
echo L==========================================-
echo.
echo Ďđčěĺđ ęëţ÷ŕ: W269N-WFGWX-YVC9B-4J6C9-T83GX
echo.
set /p win_key="Ââĺäčňĺ âŕř ęëţ÷ ďđîäóęňŕ: "
if "%win_key%"=="" (
    echo ! Ęëţ÷ íĺ ââĺäĺí !
    pause
    goto menu
)
goto menu

:activate
if not defined win_key (
    echo ! Ńíŕ÷ŕëŕ ââĺäčňĺ ęëţ÷ â ďóíęňĺ 1 !
    pause
    goto menu
)
cls
echo ă==========================================Ź
echo Ś         ŔĘŇČÂŔÖČß WINDOWS                Ś
echo L==========================================-
echo.
echo Čńďîëüçóĺňń˙ ęëţ÷: %win_key%
echo.
cscript //nologo %windir%\system32\slmgr.vbs /ipk %win_key%
cscript //nologo %windir%\system32\slmgr.vbs /ato
echo.
pause
goto menu

:check_status
cls
echo ă==========================================Ź
echo Ś       ĎĐÎÂĹĐĘŔ ŔĘŇČÂŔÖČČ WINDOWS         Ś
echo L==========================================-
echo.
cscript //nologo %windir%\system32\slmgr.vbs /xpr
echo.
pause
goto menu
