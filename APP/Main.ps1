. .\APP\SystemParams.ps1

Write-Output "PCReportGenerator is running!"

$CPU_usage = Get-CPU
$RAM_usage = Get-RAM
$Partition = Get-Discs

Write-Output "CPU usage: $CPU_usage %"
Write-Output "RAM usage: $RAM_usage %"
Write-Output "Disc partitions:"
foreach($p in $Partition){
    $Letter = $p.DriveLetter
    $Size   = $p.Size / 1Gb
    Write-Output "$Letter - $Size Gb" 
}