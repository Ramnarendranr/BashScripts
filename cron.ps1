# Schedule a task to run a PowerShell script daily
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\Path\To\Script.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -At "2AM"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DailyScriptTask" -Description "Runs a PowerShell script daily at 2 AM"

