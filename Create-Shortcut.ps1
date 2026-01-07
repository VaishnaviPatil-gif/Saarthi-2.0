$WshShell = New-Object -ComObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$ShortcutPath = "$DesktopPath\Saarthi AI.lnk"
$Shortcut = $WshShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = "$PSScriptRoot\START_SAARTHI_SILENT.vbs"
$Shortcut.WorkingDirectory = $PSScriptRoot
$Shortcut.Description = "Launch Saarthi AI Mental Health Support"
$Shortcut.IconLocation = "C:\Windows\System32\imageres.dll,76"
$Shortcut.Save()
Write-Host "Desktop shortcut created: Saarthi AI" -ForegroundColor Green
