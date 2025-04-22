@echo off
chcp 1251 > nul
title Активация Windows (легальная)
color 0a
cls

:: Проверка прав администратора
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo г==========================================¬
    echo ¦   ЗАПУСТИТЕ ОТ ИМЕНИ АДМИНИСТРАТОРА!    ¦
    echo L==========================================-
    pause
    exit
)

:menu
cls
echo г==========================================¬
echo ¦         АКТИВАЦИЯ WINDOWS                ¦
echo ¦==========================================¦
echo ¦ 1. Ввести лицензионный ключ              ¦
echo ¦ 2. Активировать Windows                  ¦
echo ¦ 3. Проверить статус активации            ¦
echo ¦ 4. Выход                                 ¦
echo L==========================================-
echo ========================================
echo Скрипт разработан: [Developer Noir]
echo Версия: 1.0 (2025)
echo ========================================

set /p choice="Выберите действие (1-4): "

if "%choice%"=="1" goto enter_key
if "%choice%"=="2" goto activate
if "%choice%"=="3" goto check_status
if "%choice%"=="4" exit
goto menu

:enter_key
cls
echo г==========================================¬
echo ¦       ВВОД ЛИЦЕНЗИОННОГО КЛЮЧА           ¦
echo L==========================================-
echo.
echo Пример ключа: W269N-WFGWX-YVC9B-4J6C9-T83GX
echo.
set /p win_key="Введите ваш ключ продукта: "
if "%win_key%"=="" (
    echo ! Ключ не введен !
    pause
    goto menu
)
goto menu

:activate
if not defined win_key (
    echo ! Сначала введите ключ в пункте 1 !
    pause
    goto menu
)
cls
echo г==========================================¬
echo ¦         АКТИВАЦИЯ WINDOWS                ¦
echo L==========================================-
echo.
echo Используется ключ: %win_key%
echo.
cscript //nologo %windir%\system32\slmgr.vbs /ipk %win_key%
cscript //nologo %windir%\system32\slmgr.vbs /ato
echo.
pause
goto menu

:check_status
cls
echo г==========================================¬
echo ¦       ПРОВЕРКА АКТИВАЦИИ WINDOWS         ¦
echo L==========================================-
echo.
cscript //nologo %windir%\system32\slmgr.vbs /xpr
echo.
pause
goto menu