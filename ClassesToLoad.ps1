$invocables = @()

$invocables += $( get-content "$PSScriptRoot\BaseClasses.psm1" ) -join "`r`n"
$invocables += $( get-content "$PSScriptRoot\ChildClasses.psm1" ) -join "`r`n"

foreach ($i in $invocables) { Invoke-Expression -Command $i }
