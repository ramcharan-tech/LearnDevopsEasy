$env:KUBE_EDITOR="code --wait"

function sgt()
{
    
   $json = aws sso login && aws eks get-token --cluster-name observability-cluster-infra-dev --profile dev | ConvertFrom-Json
   $token= $json.status | ConvertTo-Json | ConvertFrom-Json
   Set-Clipboard -Value $token.token
}
function gt()
{
   $json = aws eks get-token --cluster-name observability-cluster-infra-dev --profile dev | ConvertFrom-Json
   $token= $json.status | ConvertTo-Json | ConvertFrom-Json
   Set-Clipboard -Value $token.token
}

function Get-PSVersion {
    $PSVersionTable.PSVersion
}

function which ($command) {  
  Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
}
