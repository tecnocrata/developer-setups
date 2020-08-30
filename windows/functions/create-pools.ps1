Function CreateAppPools ($appPoolList) {
    Import-Module WebAdministration
    Write-Host "Creating IIS App Pools ..."

    foreach($appPool in $appPoolList)
    {
        $appPoolPath = 'IIS:/apppools/' + $appPool
        $applicationPath = 'IIS:\Sites\Default Web Site\' + $appPool
        $physicalPath = 'C:\inetpub\wwwroot\' + $appPool

        "Creating application and application pool: " + $appPool

        if (Test-Path IIS:\AppPools\$appPool)
        {
            "App pool already exists: " + $appPool
        }
        else
        {
            new-item $appPoolPath		
        }
        # Set-ItemProperty IIS:\AppPools\$appPool managedRuntimeVersion v4.0
        # Set-ItemProperty IIS:\AppPools\$appPool processModel.identity NetworkService
    }
}

CreateAppPools ("demo1", "demo2")