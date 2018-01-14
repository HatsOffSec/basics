#Clears variables incase of incorrect user input
Remove-Variable * -ErrorAction SilentlyContinue

$domainName = Read-Host 'Please Enter Domain Name [Optional]'

$userName = Read-Host 'Please Enter Username'

$objUser = New-Object System.Security.Principal.NTAccount("$domainName","$userName")

$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])

#Displays result to PS for copy/paste
$strSID.Value

#Pop-up box with result
[System.Windows.Forms.MessageBox]::Show($strSID)
