using module '.\New-FunctionFromConstructors\New-FunctionFromConstructors.psm1'

class Theme {

    [string]$theme_name

    [scriptblock]$where_clause

    [int]$weight



}<# End class Theme #>



class CardTheme {

    [string]$card_code

    [string]$card_name

    [string]$theme_name

    [boolean]$ignore_this



    CardTheme() {

    $this.ignore_this = $false

    }<# End CardTheme() #>



}<# End class CardTheme #>



class CardNTDG : Card {

    [int]$available_quantity

    [boolean]$utility_flag


    [ConstructorName('Empty')]
    CardNTDG() {
        #CardNTDG specific properties
        #Available_quantity is updated when the cycles, cores, and packs are established.
        $this.available_quantity = 0
        $this.utility_flag = $false
    }<# END [ConstructorName('Empty')]CardNTDG() #>

    [ConstructorName('CardFromApi')]
    CardNTDG(
         [string]$code
        ,[string]$title
        ,[string]$keywords#nullable
        ,[string]$text
        ,[int]$advancement_cost
        ,[int]$agenda_points
        ,[int]$base_link
        ,[int]$cost#nullable
        ,[int]$faction_cost#nullable
        ,[string]$flavor#nullable
        ,[string]$illustrator
        ,[int]$influence_limit#nullable
        ,[int]$memory_cost
        ,[int]$minimum_deck_size
        ,[int]$position
        ,[int]$quantity
        ,[int]$strength
        ,[int]$trash_cost#nullable
        ,[boolean]$uniqueness
        ,[int]$deck_limit
        ,[string]$pack_code
        ,[string]$type_code
        ,[string]$faction_code
        ,[string]$side_code
        ,[string]$image_url#nullable
    ) {

        $this.code             = $code
        $this.title            = $title
        $this.keywords         = $keywords
        $this.text             = $text
        $this.advancement_cost = $advancement_cost
        $this.agenda_points    = $agenda_points
        $this.base_link        = $base_link
        $this.cost             = $cost
        $this.faction_cost     = $faction_cost
        $this.flavor           = $flavor
        $this.illustrator      = $illustrator
        $this.influence_limit  = $influence_limit
        $this.memory_cost      = $memory_cost
        $this.minimum_deck_size= $minimum_deck_size
        $this.position         = $position
        $this.quantity         = $quantity
        $this.strength         = $strength
        $this.trash_cost       = $trash_cost
        $this.uniqueness       = $uniqueness
        $this.deck_limit       = $deck_limit
        $this.pack_code        = $pack_code
        $this.type_code        = $type_code
        $this.faction_code     = $faction_code
        $this.side_code        = $side_code
        $this.image_url        = $image_url

        #CardNTDG specific properties
        #Available_quantity is updated when the cycles, cores, and packs are established.
        $this.available_quantity = 0
        $this.utility_flag = $false

    }<# End [ConstructorName('CardFromApi')] CardNTDG(...) #>

}<# End class CardNTDG #>


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
$([CardNTDG].GetConstructors() | Where-Object {$_.GetCustomAttributes('ConstructorName').Name -Like 'Empty'} ).Invoke(@($))
}
END{}
}<# END New-Object-CardNTDG-Empty #>
        
