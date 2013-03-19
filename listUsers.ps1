Import-Module ActiveDirectory

$admins = "Administrators"
$domAdmins = "Domain Admins"
$user = "Users"

write-host ""
Write-Host "Admins:"
write-host ""
Get-ADGroupMember $admins | foreach-object {
    Write-Host $_.SamAccountName
}

write-host ""
write-Host "Domain Admins:"
write-host ""
Get-ADGroupMember $domAdmins | foreach-object {
    Write-Host $_.SamAccountName
}

write-host ""
write-Host "Normal Users:"
write-host ""
Get-ADGroupMember $user | foreach-object {
    Write-Host $_.SamAccountName
}
write-host ""