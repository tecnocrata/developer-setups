Function CreateFirewallRules {
    Write-Host "Creating Firewall rules..."
    New-NetFirewallRule -Name "Allow All Inbound" -Direction Inbound -InterfaceType Any -Action Allow
    New-NetFirewallRule -Name "Allow All Outbound" -Direction Outbound -InterfaceType Any -Action Allow

    netsh advfirewall firewall add rule name="Co-op Service" dir=in action=allow protocol=TCP localport=9303,8897
    netsh advfirewall firewall add rule name="File Server" dir=in action=allow protocol=TCP localport=9301,8899
    netsh advfirewall firewall add rule name="Media Server" dir=in action=allow protocol=TCP localport=9303,8915,9001,9300,5060,7930
    netsh advfirewall firewall add rule name="SQL Server (TCP)" dir=in action=allow protocol=TCP localport=1434,1433
    netsh advfirewall firewall add rule name="SQL Server (UDP)" dir=in action=allow protocol=UDP localport=1434
    netsh advfirewall firewall add rule name="VC" dir=in action=allow protocol=TCP localport=9300,9310,8898
    netsh advfirewall firewall add rule name="IIS Health Checks" dir=in action=allow protocol=TCP localport=80
    
    netsh advfirewall firewall add rule name="Co-op Service" dir=out action=allow protocol=TCP localport=9303,8897
    netsh advfirewall firewall add rule name="File Server" dir=out action=allow protocol=TCP localport=9301,8899
    netsh advfirewall firewall add rule name="Media Server" dir=out action=allow protocol=TCP localport=9303,891,5060,7930
    netsh advfirewall firewall add rule name="SQL Server (TCP)" dir=out action=allow protocol=TCP localport=1434
    netsh advfirewall firewall add rule name="SQL Server (UDP)" dir=out action=allow protocol=UDP localport=1434
    netsh advfirewall firewall add rule name="VC" dir=out action=allow protocol=TCP localport=9300,9310,8898
    netsh advfirewall firewall add rule name="IIS Health Checks" dir=out action=allow protocol=TCP localport=80

}

CreateFirewallRules