# Install Chocolately
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Extensions and apps
choco install chocolatey-core.extension, chocolateygui, chocolatey-windowsupdate.extension, brave, 7zip.install, notepadplusplus, putty.install, firefox, winrar -y -force

choco install vlc, winscp.install, foxitreader, screenpresso -y -force 

#Account Lockout and management tool: troubleshoot account lockouts, as well as add functionality to Active Directory
choco install altools -y

choco install googlechrome --ignore-checksum -force -y

choco install vscode -force -y

#Update 
choco outdated -y 

#----------------------------------------
# Chocolatey Done

"Cholotaey done.. Setting Time zone to AEST/AEDT"
#Set Timezone to AEDT/AEST
Set-TimeZone "AUS Eastern Standard Time"
"Timezone set `t Completed..."

#Optional: to install remove commented section
## Commented section


"Downloading and installing WVd Admin Tool..."
$url = "https://blog.itprocloud.de/assets/files/WVDAdmin.msi"
$filePath = "C:\windows\temp\WVDAdmin.msi"
Invoke-WebRequest -Uri $url -OutFile $filePath
Start-Process msiexec -ArgumentList "/i $filePath /qn" -Wait
#>

## Commented section finished

"Script Completed... You may close the Terminal... Thank you!"
