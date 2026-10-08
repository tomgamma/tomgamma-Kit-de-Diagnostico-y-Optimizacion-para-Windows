@echo off
title Mantenimiento y Optimizacion de PC
color 0A

echo =======================================
echo    LIMPIEZA Y OPTIMIZACION DE WINDOWS
echo =======================================
echo.

echo [1/3] Limpiando carpetas de archivos temporales...
del /q /f /s %TEMP%\* >nul 2>&1
del /q /f /s C:\Windows\Temp\* >nul 2>&1
del /q /f /s C:\Windows\Prefetch\* >nul 2>&1

echo [2/3] Activando plan de energia de Alto Rendimiento...
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

echo [3/3] Vaciando cache DNS para refrescar la conexion de red...
ipconfig /flushdns >nul

echo.
echo =======================================
echo        MANTENIMIENTO COMPLETADO
echo =======================================
pause