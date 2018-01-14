#Clears variables incase of incorrect user input
Remove-Variable * -ErrorAction SilentlyContinue 

#Prompts Users to input data
$inputSID = Read-Host 'Please enter SID'

$objSID = New-Object System.Security.Principal.SecurityIdentifier ("$inputSID")

$objUser = $ObjSID.Translate( [System.Security.Principal.NTAccount])

#Displays result to PS for copy/paste
$objUser.Value

#Pop-up box with result
[System.Windows.Forms.MessageBox]::Show($objUser)
