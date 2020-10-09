[console]::BackgroundColor = "Black"
#Дизайн консоли
Clear-Host
Write-Host `n "Folder Rights" `n -Backgroundcolor DarkGreen
#Получаем данные из буфера обмена
$Folder = Get-Clipboard
#Обрабатываем данные скриптом
(get-acl $Folder).Access | Format-Table -Property FileSystemRights, AccessControlType, IdentityReference

Read-Host "Press any Key"
