[System.Environment]::SetenvironmentVariable("foo","bar",1) 0:process,1:user,2:machine
[System.Environment]::SetenvironmentVariable("PROGET_API_USER",$null,2)
[System.Environment]::GetEnvironmentVariable("Path","Machine") 
Get-ChildItem Env:   (or) Get-ChildItem -Path Env:
  $Env:<variable-name> (get process,system,user combined value of that variable)