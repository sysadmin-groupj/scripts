
$searcher = new-object DirectoryServices.DirectorySearcher
$searcher.Filter = "CN=*,DC=Sqrawler,DC=com,DC=GroupJ"
$list = $searcher.FindAll()
$list