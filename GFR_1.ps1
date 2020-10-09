#[console]::BackgroundColor = "Black"
Clear-Host
Write-Host `n "Folder Rights" `n -Backgroundcolor DarkGreen

#Write-Host `n (Get-Clipboard)

$Folder = Get-Clipboard

#Write-Host $Folder

(get-acl $Folder).Access | Format-Table -Property FileSystemRights, AccessControlType, IdentityReference
#Get-Acl -Path $folder | format-list -property Owner, Access
Read-Host "Press any Key"