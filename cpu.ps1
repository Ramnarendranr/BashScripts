# Monitor CPU usage
Get-WmiObject -Class Win32_Processor | Select-Object Name, LoadPercentage

