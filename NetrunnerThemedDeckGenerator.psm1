
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
        

FUNCTION New-Object-CycleNTDG-Empty {
        [CmdletBinding(PositionalBinding=$true)]
        PARAM()
        BEGIN{}
        PROCESS{
        $([CycleNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
        }
        END{}
        }
        

FUNCTION New-Object-CycleNTDG-CardFromApi {
        [CmdletBinding(PositionalBinding=$true)]
        PARAM([PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$name,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][int]$position,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][int]$size,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][bool]$rotated)
        BEGIN{}
        PROCESS{
        $([CycleNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($code,$name,$position,$size,$rotated))
        }
        END{}
        }
    

FUNCTION New-Object-FactionNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([FactionNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}
        

FUNCTION New-Object-FactionNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM([PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$name,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][bool]$is_mini,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][Side]$side_code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$color)
BEGIN{}
PROCESS{
$([FactionNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($code,$name,$is_mini,$side_code,$color))
}
END{}
}
        

FUNCTION New-Object-MwlNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([MwlNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}
        

FUNCTION New-Object-MwlNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM([PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][int]$id,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$name,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][datetime]$date_start,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][bool]$active,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][psobject[]]$cards,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][datetime]$date_creation,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][datetime]$date_update)
BEGIN{}
PROCESS{
$([MwlNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($id,$code,$name,$date_start,$active,$cards,$date_creation,$date_update))
}
END{}
}
        

FUNCTION New-Object-PackNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([PackNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}
        

FUNCTION New-Object-PackNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM(
 [PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][string]$code
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][string]$name
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][datetime]$date_release
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][int]$size
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][int]$position
,[PARAMETER(Mandatory=$False,ValueFromPipelineByPropertyName=$True)][int]$ffgId
,[PARAMETER(Mandatory=$True ,ValueFromPipelineByPropertyName=$True)][string]$cycle_code
)
BEGIN{}
PROCESS{
$([PackNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($code,$name,$date_release,$size,$position,$ffgId,$cycle_code))
}
END{}
}
        

FUNCTION New-Object-SideNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([SideNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}
        

FUNCTION New-Object-SideNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM([PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$name,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$code)
BEGIN{}
PROCESS{
$([SideNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($name,$code))
}
END{}
}
        

FUNCTION New-Object-CardTypeNTDG-Empty {
[CmdletBinding(PositionalBinding=$true)]
PARAM()
BEGIN{}
PROCESS{
$([CardTypeNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@())
}
END{}
}
        

FUNCTION New-Object-CardTypeNTDG-CardFromApi {
[CmdletBinding(PositionalBinding=$true)]
PARAM([PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$name,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][string]$side_code,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][bool]$is_subtype,[PARAMETER(Mandatory=$True,ValueFromPipelineByPropertyName=$True)][int]$position)
BEGIN{}
PROCESS{
$([CardTypeNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'CardFromApi'} ).Invoke(@($code,$name,$side_code,$is_subtype,$position))
}
END{}
}
        


#endregion constructor functions

#region cards

Function Get-Card {
[OutputType('CardNTDG')]
[CmdletBinding()]
PARAM(
[Parameter(Mandatory= $true,ValueFromPipeline= $true)][CardNTDG[]]$CardSet
)
    DynamicParam {
        $set = $CardSet.Title
        (New-DynamicParameter -Name 'Title' -Type String -ValidateSet $set ) | New-DynamicParameterDictionary 
    }
    BEGIN{}
    PROCESS {
        $return = $CardSet | Where-Object { $_.Title -like $PSBoundParameters['Title'] }
        return $return
    }
    END{}

}<# END Function Get-Card #>

#endregion cards

