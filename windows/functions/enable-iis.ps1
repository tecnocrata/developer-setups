Function EnableIISFeatures {
    Write-Host "Enabling IIS Features..."
    # This script installs IIS and the features required to
    # run West Wind Web Connection.
    #
    # * Make sure you run this script from a Powershel Admin Prompt!
    # * Make sure Powershell Execution Policy is bypassed to run these scripts:
    # * YOU MAY HAVE TO RUN THIS COMMAND PRIOR TO RUNNING THIS SCRIPT!
    
    #Set-ExecutionPolicy Bypass -Scope Process

    # To list all Windows Features: dism /online /Get-Features
    # Get-WindowsOptionalFeature -Online 
    # LIST All IIS FEATURES: 
    # Get-WindowsOptionalFeature -Online | where FeatureName -like 'IIS-*'


    Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45

    Enable-WindowsOptionalFeature -Online -FeatureName WAS-WindowsActivationService
    Enable-WindowsOptionalFeature -Online -FeatureName WAS-ProcessModel
    Enable-WindowsOptionalFeature -Online -FeatureName WAS-NetFxEnvironment
    Enable-WindowsOptionalFeature -Online -FeatureName WAS-ConfigurationAPI
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-TCP-Activation45
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-NonHTTP-Activation
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-Services45
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation45
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-Services45
    Enable-WindowsOptionalFeature -Online -FeatureName WCF-TCP-PortSharing45

    # If you need classic ASP (not recommended)
    #Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASP

    # The following optional components require 
    # Chocolatey OR Web Platform Installer to install

    # Install UrlRewrite Module for Extensionless Urls (optional)
    ###  & "C:\Program Files\Microsoft\Web Platform Installer\WebpiCmd-x64.exe" /install /Products:UrlRewrite2 /AcceptEULA /SuppressPostFinish
    #choco install urlrewrite -y
        
    # Install WebDeploy for Deploying to IIS (optional)
    ### & "C:\Program Files\Microsoft\Web Platform Installer\WebpiCmd-x64.exe" /install /Products:WDeployNoSMO /AcceptEULA /SuppressPostFinish
    # choco install webdeploy -y

    # Disable Loopback Check on a Server - to get around no local Logins on Windows Server
    # New-ItemProperty HKLM:\System\CurrentControlSet\Control\Lsa -Name "DisableLoopbackCheck" -Value "1" -PropertyType dword
}

EnableIISFeatures