$ReportPath = "$env:USERPROFILE\Desktop\Reporte_Hardware.txt" # Script para recopilar informacion de el hardware y el sistema

Clear-Content $ReportPath -ErrorAction SilentlyContinue # Limpia el reporte anterior si ya existe

"=== REPORTE DE DIAGNÓSTICO DE PC ===" | Out-File $ReportPath
"Fecha: $(Get-Date)" | Out-File $ReportPath -Append
"-----------------------------------" | Out-File $ReportPath -Append

# Sistema Operativo
$OS = Get-CimInstance Win32_OperatingSystem
"Sistema Operativo: $($OS.Caption) $($OS.OSArchitecture)" | Out-File $ReportPath -Append

# CPU
$CPU = Get-CimInstance Win32_Processor
"Procesador: $($CPU.Name)" | Out-File $ReportPath -Append

# RAM Total
$RAM = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
$RAM_GB = [math]::Round($RAM.Sum / 1GB, 2)
"Memoria RAM Total: $RAM_GB GB" | Out-File $ReportPath -Append

# Espacio en Discos Duros (Solo discos locales)
"Almacenamiento:" | Out-File $ReportPath -Append
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $TotalGB = [math]::Round($_.Size / 1GB, 2)
    $FreeGB = [math]::Round($_.FreeSpace / 1GB, 2)
    " - Unidad $($_.DeviceID) $FreeGB GB libres de $TotalGB GB" | Out-File $ReportPath -Append
}

Write-Host "Diagnóstico completado. Revisa el archivo Reporte_Hardware.txt en tu Escritorio." -ForegroundColor Green
