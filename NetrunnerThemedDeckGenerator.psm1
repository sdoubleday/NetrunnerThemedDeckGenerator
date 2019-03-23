
#region Fetches
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

#endregion Fetches

#region constructor functions


FUNCTION New-Object-CardNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM(
 [PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$code          = $null
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$title         = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$keywords      = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$text          = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$advancement_cost = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$agenda_points    = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$base_link        = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$cost             = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$faction_cost     = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$flavor        = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$illustrator   = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$influence_limit  = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$memory_cost      = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$minimum_deck_size= $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$position         = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$quantity         = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$strength         = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$trash_cost       = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][bool]$uniqueness      = $false
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][int]$deck_limit       = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$pack_code     = $null
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$type_code     = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$faction_code  = $null
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$side_code     = $null
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][AllowNull()][AllowEmptyString()][string]$image_url     = $null
)
BEGIN{}
PROCESS{
$([CardNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($code,$title,$keywords,$text,$advancement_cost,$agenda_points,$base_link,$cost,$faction_cost,$flavor,$illustrator,$influence_limit,$memory_cost,$minimum_deck_size,$position,$quantity,$strength,$trash_cost,$uniqueness,$deck_limit,$pack_code,$type_code,$faction_code,$side_code,$image_url))
}
END{}
}<# END New-Object-CardNTDG-CardFromApi #>
 
 
FUNCTION New-Object-CardNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([CardNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}<# END New-Object-CardNTDG-Empty #>
        


#endregion constructor functions

#region cards

Function Get-Card {
[OutputType('CardNTDG')]
[CmdletBinding()]
PARAM(
[Parameter(Mandatory= $true,ValueFromPipeline= $true)][CardNTDG[]]$CardSet
)
    DynamicParam {
        $set = $CardSet.Name
        (New-DynamicParameter -Name 'Title' -Type String -ValidateSet $set ) | New-DynamicParameterDictionary 
    }
    BEGIN{}
    PROCESS {

    }
    END{}

}<# END Function Get-Card #>

#endregion cards

