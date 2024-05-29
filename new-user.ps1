# Create a new user account
$Username = "NewUser"
$Password = ConvertTo-SecureString "Password123" -AsPlainText -Force
New-LocalUser -Name $Username -Password $Password -FullName "New User" -Description "Test User Account"
Add-LocalGroupMember -Group "Administrators" -Member $Username

