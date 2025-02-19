$volumes = aws ec2 describe-volumes --filters Name=tag:KubernetesCluster,Values=observability-platform-dev Name=status,Values=available --query 'Volumes[*].[VolumeId]' --output text 
$volumeArray = $volumes -split "`n"
foreach ($volume in $volumeArray) {    aws ec2 delete-volume --volume-id $volume }