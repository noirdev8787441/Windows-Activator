@echo off
chcp 1251 > nul
title ��������� Windows (���������)
color 0a
cls

:: �������� ���� ��������������
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo �==========================================�
    echo �   ��������� �� ����� ��������������!    �
    echo L==========================================-
    pause
    exit
)

:menu
cls
echo �==========================================�
echo �         ��������� WINDOWS                �
echo �==========================================�
echo � 1. ������ ������������ ����              �
echo � 2. ������������ Windows                  �
echo � 3. ��������� ������ ���������            �
echo � 4. �����                                 �
echo L==========================================-
echo ========================================
echo ������ ����������: [Developer Noir]
echo ������: 1.0 (2025)
echo ========================================

set /p choice="�������� �������� (1-4): "

if "%choice%"=="1" goto enter_key
if "%choice%"=="2" goto activate
if "%choice%"=="3" goto check_status
if "%choice%"=="4" exit
goto menu

:enter_key
cls
echo �==========================================�
echo �       ���� ������������� �����           �
echo L==========================================-
echo.
echo ������ �����: W269N-WFGWX-YVC9B-4J6C9-T83GX
echo.
set /p win_key="������� ��� ���� ��������: "
if "%win_key%"=="" (
    echo ! ���� �� ������ !
    pause
    goto menu
)
goto menu

:activate
if not defined win_key (
    echo ! ������� ������� ���� � ������ 1 !
    pause
    goto menu
)
cls
echo �==========================================�
echo �         ��������� WINDOWS                �
echo L==========================================-
echo.
echo ������������ ����: %win_key%
echo.
cscript //nologo %windir%\system32\slmgr.vbs /ipk %win_key%
cscript //nologo %windir%\system32\slmgr.vbs /ato
echo.
pause
goto menu

:check_status
cls
echo �==========================================�
echo �       �������� ��������� WINDOWS         �
echo L==========================================-
echo.
cscript //nologo %windir%\system32\slmgr.vbs /xpr
echo.
pause
goto menu