@echo off
title Abre pastas através de senha
color 0a
set /a tries=3
set password=pedrolopes74
:top
echo.
echo ----------------------------------------------
echo.
echo Folder Password
echo.
echo ----------------------------------------------
echo Você tem %tries% tentativas restantes.
echo Digite a senha:
echo ----------------------------------------------
set /p pass=
if %pass%==%password% (
goto correct
)
set /a tries=%tries -1
if %tries%==0 (
goto penalty
)
cls
goto top
:penalty
echo Desculpa, foram feitas várias tentativas. Reiniciando...
start shutdown -s -f -t 35 -c "SHUTDOWN INITIATED"
pause
exit
:correct
cls
echo ----------------------------------------------
echo Senha aceita.
echo.
echo Abrindo pasta do 18.1...
echo ----------------------------------------------
explorer F:\UFOP\18.1
pause
