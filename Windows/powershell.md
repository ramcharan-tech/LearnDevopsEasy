pwsh.exe
Start-Process powershell -Verb runAs  -->open admin powershell
$profile --> to get profile file
. $profile --> to reload powershell profile using dot sourcing method
refreshenv --> if you use chocolatey
Invoke-Command { & "powershell.exe" } -NoNewScope  # PowerShell 5
Invoke-Command { & "pwsh.exe" } -NoNewScope  # PowerShell 7
New-Item -path $profile -type file -force  --> to create new profile
$env:KUBE_EDITOR="code --wait" --> to be added for kubectl editor as vsc
$env:path --> to print path variable

$podname=getPodName "grafana-agent"  --> create a variable or
kubectl logs $(getPodName "grafana-agent")

Set-PSReadLineOption -Colors @{
"Command" = "Blue"
"Parameter" = "Black"
}