# Delete all Log Files older than 60 day(s)

$Path ="C:\Vocantas\EmployeePortal\Logs\VQA-QA4"
$Daysback = "-1"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Recurse -Force -Confirm:$false