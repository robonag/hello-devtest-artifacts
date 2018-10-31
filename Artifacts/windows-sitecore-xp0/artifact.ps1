[CmdletBinding()]
param(
    [string] $InstallationZipUrl
)

New-Item -ItemType "Directory" -Name "$InstallationZipUrl" -Path "C:\"
