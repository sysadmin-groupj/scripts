@'
param(
	[string]$group
)

$s = "LDAP://CN=$group"
$root = New-Object DirectoryServices.DirectoryEntry $s
 
$selector = New-Object DirectoryServices.DirectorySearcher
$selector.SearchRoot = $root

$find= $selector.findall()

Write-host $find
 
