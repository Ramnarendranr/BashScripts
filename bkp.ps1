# Backup files from one directory to another
$source = "C:\Path\To\Source"
$destination = "C:\Path\To\Destination"
Copy-Item -Path $source -Destination $destination -Recurse

