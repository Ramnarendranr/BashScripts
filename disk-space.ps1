# Check disk space for all drives
Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="FreeSpaceGB";Expression={[math]::round($_.Free/1GB,2)}}, @{Name="UsedSpaceGB";Expression={[math]::round(($_.Used/1GB),2)}}, @{Name="TotalSpaceGB";Expression={[math]::round($_.Used/1GB,2) + [math]::round($_.Free/1GB,2)}}

