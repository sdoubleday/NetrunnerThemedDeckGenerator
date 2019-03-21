<#SDS Modified Pester Test file header to handle modules.#>
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = ( (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.' ) -replace '.ps1', '.psd1'
$scriptBody = "using module $here\$sut"
$script = [ScriptBlock]::Create($scriptBody)
. $script

Describe "NetrunnerThemedDeckGenerator" {
    
    $TestStrings = @(
    '$(Invoke-RestMethod "https://netrunnerdb.com/api/2.0/public/cards" | Select-Object -ExpandProperty data  | Select-Object -First 1 | New-Object-CardNTDG-CardFromApi ).GetType().Name | Should Be "CardNTDG"'
    )
    foreach ($t in $TestStrings) {
        It $t { Invoke-Expression $t}  
    }<# END foreach ($t in $TestStrings) #>
}
