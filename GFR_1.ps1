# Дизайн консоли - меняем цвет консоли на черный 
[console]::BackgroundColor = "Black"
# Очищаем консоль перед использованием
Clear-Host
# Легкая раскараска консоли и вывод заголовка
Write-Host `n "Folder Rights" `n -Backgroundcolor DarkGreen
# Получаем данные из буфера обмена
$Folder = Get-Clipboard
# Вывод данных о выбраной папке
Write-Host `n "Target Folder" $Folder
# Обрабатываем данные скриптом
(get-acl $Folder).Access | Format-Table -Property FileSystemRights, AccessControlType, IdentityReference
# Выводим данные и ждем нажатия любой клавиши для закрытия окна
Read-Host "Press any Key"
