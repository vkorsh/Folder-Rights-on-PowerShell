[console]::BackgroundColor = "Black"
#Дизайн консоли
Clear-Host
Write-Host `n "Folder Rights" `n -Backgroundcolor DarkGreen
#Получаем данные из буфера обмена
$Folder = Get-Clipboard

(get-acl $Folder).Access | Format-Table -Property FileSystemRights, AccessControlType, IdentityReference
#Get-Acl -Path $folder | format-list -property Owner, Access
Read-Host "Press any Key"
