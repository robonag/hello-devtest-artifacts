[CmdletBinding()]
param(
    [string] $InstallationZipUrl
)

New-Item -ItemType "Directory" -Name "temp" -Path "C:\"

Import-Module BitsTransfer
Start-BitsTransfer -Source $InstallationZipUrl -Destination "C:\temp\install.zip"

Expand-Archive -Path "C:\temp\install.zip" -DestinationPath "C:\temp"

cd "C:\temp\Sitecore IKEA"

Get-ChildItem -Recurse | Unblock-File


& '.\install sc9.ps1'
