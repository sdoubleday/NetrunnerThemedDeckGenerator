
function Fetch-Cards {
[OutputType('CardNTDG[]')]
[CmdletBinding()]
PARAM(
[string]$URI = 'https://netrunnerdb.com/api/2.0/public/cards'
)

BEGIN{}
PROCESS{

$return = @()

$return += Invoke-RestMethod -Uri $URI | Select-Object -ExpandProperty data | New-Object-CardNTDG-CardFromApi

return $return

}<# END PROCESS #>
END{}
}<# END function Fetch-Cards #>

