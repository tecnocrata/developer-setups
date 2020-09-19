This script was tested only on Windows 10

1. Install Boxstarter

- Using Powershell console enable remote signed policy:

```
Set-ExecutionPolicy RemoteSigned
```

Select option (A)

- Using Powershell console install it:

```
. { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force
```

For more details go to: https://boxstarter.org/InstallBoxstarter#:~:text=Downloading%20the%20zip%20file,Note%3A%20Setup.

2. Execute installer script

Using Powershell script execute

```
.\setup.ps1
```
