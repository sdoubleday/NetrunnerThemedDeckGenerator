<#SDS Modified Pester Test file header to handle modules.#>
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = ( (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.' ) -replace '.ps1', '.psd1'
$scriptBody = "using module $here\$sut"
$script = [ScriptBlock]::Create($scriptBody)
. $script

Describe "NetrunnerThemedDeckGenerator Fetches" {

    $TestStrings = @(
    '$( Fetch-Cards | select-object -first 1 ).GetType().Name | Should Be "CardNTDG"'
    )
    foreach ($t in $TestStrings) {
        It $t { Invoke-Expression $t}  
    }<# END foreach ($t in $TestStrings) #>

}<# END Describe "NetrunnerThemedDeckGenerator Fetches" #>

Describe "NetrunnerThemedDeckGenerator" {
    BEFOREALL{
        $allCards = Fetch-Cards
    }

    Context 'Constructors' {
        
    $TestStrings = @(
        '$( New-Object-CardNTDG-CardFromApi ).GetType().Name | SHOULD BE "CardNTDG"'
    )
    foreach ($t in $TestStrings) {
        It $t { Invoke-Expression $t}  
    }<# END foreach ($t in $TestStrings) #>

    }

}<# END Describe "NetrunnerThemedDeckGenerator" #>

