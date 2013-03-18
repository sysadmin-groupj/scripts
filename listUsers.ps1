$s = "LDAP://CN=Users"
$root = New-Object DirectoryServices.DirectoryEntry $s
 
$selector = New-Object DirectoryServices.DirectorySearcher
$selector.SearchRoot = $root

$find= $selector.findall()

Write-host $find
 
