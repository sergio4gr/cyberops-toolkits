
[string]$storePath = "C:\defense-toolkit"
[string]$procmon32_url = "https://live.sysinternals.com/Procmon.exe"
[string]$procmon64_url = "https://live.sysinternals.com/Procmon64.exe"
[string]$psexec32_url = "https://live.sysinternals.com/PsExec.exe"
[string]$psexec64_url = "https://live.sysinternals.com/PsExec64.exe"
[string]$sigcheck32_url = "https://live.sysinternals.com/sigcheck.exe"
[string]$sigcheck64_url = "https://live.sysinternals.com/sigcheck64.exe"
[string]$strings32_url = "https://live.sysinternals.com/strings.exe"
[string]$strings64_url = "https://live.sysinternals.com/strings64.exe"
[string]$sysmon32_url = "https://live.sysinternals.com/Sysmon.exe"
[string]$sysmon64_url = "https://live.sysinternals.com/Sysmon64.exe"
[string]$tcpview32_url = "https://live.sysinternals.com/tcpview.exe"
[string]$tcpview64_url = "https://live.sysinternals.com/tcpview64.exe"
[string]$teamviewer64_url = "https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe"


if (-Not (Test-Path -Path $storePath)) {
    New-Item $storePath -ItemType Directory | Out-Null
} else { 
    Get-ChildItem -Path $storePath -Include *.* -File -Recurse | ForEach-Object { $_.Delete()}
}

$ProgressPreference = 'SilentlyContinue' 
Invoke-WebRequest -Uri $procmon32_url -OutFile "$storepath\procmon_x86.exe"
Invoke-WebRequest -Uri $procmon64_url  -OutFile "$storepath\procmon_x64.exe"
Invoke-WebRequest -Uri $psexec32_url -OutFile "$storepath\psexec_x86.exe"
Invoke-WebRequest -Uri $psexec64_url  -OutFile "$storepath\psexec_x64.exe"
Invoke-WebRequest -Uri $sigcheck32_url -OutFile "$storepath\sigcheck_x86.exe"
Invoke-WebRequest -Uri $sigcheck64_url  -OutFile "$storepath\sigcheck_x64.exe"
Invoke-WebRequest -Uri $strings32_url -OutFile "$storepath\strings_x86.exe"
Invoke-WebRequest -Uri $strings64_url  -OutFile "$storepath\strings_x64.exe"
Invoke-WebRequest -Uri $sysmon32_url -OutFile "$storepath\sysmon_x86.exe"
Invoke-WebRequest -Uri $sysmon64_url  -OutFile "$storepath\sysmon_x64.exe"
Invoke-WebRequest -Uri $tcpview32_url -OutFile "$storepath\tcpview_x86.exe"
Invoke-WebRequest -Uri $tcpview64_url  -OutFile "$storepath\tcpview_x64.exe"
Invoke-WebRequest -Uri $teamviewer64_url -OutFile "$storepath\teamviewer_x64.exe"
