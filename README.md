# 🛠️ Kit de Diagnóstico y Optimización para Windows

Una colección de scripts de automatización diseñados para agilizar tareas de soporte técnico, auditoría de hardware y mantenimiento preventivo en sistemas operativos Windows.

## 📝 Descripción de las Herramientas

Este repositorio contiene herramientas desarrolladas en PowerShell y Batch para optimizar el flujo de trabajo en la reparación y configuración de equipos:

*   **`Get-PCInfo.ps1` (Auditoría de Hardware):** Un script de PowerShell que recopila información vital del sistema (Sistema Operativo, Procesador, Memoria RAM instalada y estado del almacenamiento) y genera un reporte en texto plano en el escritorio. Ideal para diagnósticos rápidos sin necesidad de desarmar el equipo ni instalar software de terceros.
*   **`Optimizador_Rapido.bat` (Mantenimiento Preventivo):** Un script ejecutable en Batch que realiza una limpieza profunda de archivos temporales (`%TEMP%`, `Windows\Temp`, `Prefetch`), activa el plan de energía de Alto Rendimiento y limpia la caché DNS para mejorar la respuesta de red.

## 🚀 Instrucciones de Uso

### Generador de Reportes (`Get-PCInfo.ps1`)
1. Descargar el archivo al equipo objetivo.
2. Hacer clic derecho sobre el archivo y seleccionar **Ejecutar con PowerShell**.
3. *Nota:* Si el sistema bloquea la ejecución, abrir PowerShell y ejecutar: `Set-ExecutionPolicy Bypass -Scope Process -Force`, luego arrastrar el script a la consola.

### Optimizador Rápido (`Optimizador_Rapido.bat`)
1. Descargar el archivo.
2. Hacer clic derecho sobre el archivo y seleccionar **Ejecutar como administrador** (requerido para limpiar los directorios internos del sistema).
3. Seguir las instrucciones en pantalla.

## ⚠️ Advertencia
El script de optimización elimina archivos de las carpetas temporales de Windows de forma definitiva. Se recomienda cerrar las aplicaciones en uso antes de ejecutarlo para evitar conflictos.

---
*Desarrollado por Tomás/tomgamma - Orientado a Soporte Técnico y Administración de Sistemas.*
