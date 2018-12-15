#PoC Script to get MAC Address of Default Gateway

#Clears variables incase of incorrect user input
Remove-Variable * -ErrorAction SilentlyContinue

#Show a list of all network Adapters filtered by name and interface index
Get-NetAdapter | Format-List -Property name,ifindex

#Ask user to type in relevant ifindex
$intIndex = Read-Host -Prompt 'Please enter the relevant ifIndex value of your Wireless Interface '
#Confirm Entry
cls
Write-Host "Checking ifIndex '$intIndex' "

#Use the intindex variable to show relevant get-netneighbor results
Get-NetNeighbor -InterfaceIndex $intIndex -State Reachable

#Inserts blank line
Write-Host "`n"

#This will need to be addressed when not a PoC
Write-Host "Should only be a single entry"
Write-Host "`n"

#Add the MAC as a variable
$macAddress = Get-NetNeighbor -InterfaceIndex $intIndex -State Reachable | foreach LinkLayerAddress

#Show current MAC address details
Write-Host "Current MAC address of Default Gateway is '$macAddress'"
Write-Host "`n"

Pause
