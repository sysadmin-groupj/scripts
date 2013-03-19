
write-host $args[1]
$s = "LDAP://CN=$args[1]"
$root = New-Object DirectoryServices.DirectoryEntry $s
 
$selector = New-Object DirectoryServices.DirectorySearcher
$selector.SearchRoot = $root

$find= $selector.findall()

Write-host $find
 
