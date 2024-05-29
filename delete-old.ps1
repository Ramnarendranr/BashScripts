# Find and delete files older than 30 days
$path = "C:\Path\To\Directory"
$days = 30
Get-ChildItem -Path $path -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$days) } | Remove-Item

