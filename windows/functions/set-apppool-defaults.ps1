Function SetAppPoolDefaults {
    Write-Host "Setting specific required values for IIS App Pools ..."
    C:\Windows\System32\inetsrv\appcmd.exe set config -section:system.applicationHost/applicationPools /applicationPoolDefaults.managedRuntimeVersion:"v4.0" /commit:apphost
    C:\Windows\System32\inetsrv\appcmd.exe set config -section:system.applicationHost/applicationPools /applicationPoolDefaults.processModel.identityType:"NetworkService" /commit:apphost
}

SetAppPoolDefaults