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

class CycleNTDG : Cycle {
    
    [ConstructorName('Empty')]
    CycleNTDG() {} <# END CycleNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    CycleNTDG(
         [string]$code
        ,[string]$name
        ,[int]$position
        ,[int]$size
        ,[boolean]$rotated
    ) {
        $this.code    = $code
        $this.name    = $name
        $this.position= $position
        $this.size    = $size
        $this.rotated = $rotated       
    } <# END  #>
}<# END class CycleNTDG #>

class DeckListNTDG : DeckList {
    
    [ConstructorName('Empty')]
    DeckListNTDG() {} <# END DeckListNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    DeckListNTDG(
         [int]     $id
        ,[DateTime]$date_creation
        ,[DateTime]$date_update
        ,[string]  $name
        ,[string]  $description
        ,[int]     $user_id
        ,[string]  $user_name
        ,[boolean] $tournament_badge
        ,[string[]]$cards#"card_code=count"
        ,[string]  $mwl_code
    ) {
        $this.id                      = $id
        $this.date_creation           = $date_creation
        $this.date_update             = $date_update
        $this.name                    = $name
        $this.description             = $description
        $this.user_id                 = $user_id
        $this.user_name               = $user_name
        $this.tournament_badge        = $tournament_badge
        $this.cards                   = $cards#"card_code=count"
        $this.mwl_code                = $mwl_code
    } <# END DeckListNTDG() [ConstructorName('CardFromApi')] #>

}<# END class DeckListNTDG #>

class FactionNTDG : Faction {

    [ConstructorName('Empty')]
    FactionNTDG() {} <# END FactionNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    FactionNTDG(
         [string] $code
        ,[string] $name
        ,[boolean]$is_mini
        ,[Side]   $side_code
        ,[string] $color
    ) {
        $this.code      = $code
        $this.name      = $name
        $this.is_mini   = $is_mini
        $this.side_code = $side_code
        $this.color     = $color
    } <# END FactionNTDG() [ConstructorName('CardFromApi')] #>
    
}<# END class FactionNTDG #>

class MwlNTDG : Mwl {
    [int]$id
    [string]$code
    [string]$name
    [DateTime]$date_start
    [boolean]$active
    [PSObject[]]$cards
    [DateTime]$date_creation
    [DateTime]$date_update
    [ConstructorName('Empty')]
    MwlNTDG() {} <# END MwlNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    MwlNTDG(
         [int]       $id
        ,[string]    $code
        ,[string]    $name
        ,[DateTime]  $date_start
        ,[boolean]   $active
        ,[PSObject[]]$cards
        ,[DateTime]  $date_creation
        ,[DateTime]  $date_update
    ) {
        $this.id            = $id
        $this.code          = $code
        $this.name          = $name
        $this.date_start    = $date_start
        $this.active        = $active
        $this.cards         = $cards
        $this.date_creation = $date_creation
        $this.date_update   = $date_update
    } <# END MwlNTDG() [ConstructorName('CardFromApi')] #>

}<# END class MwlNTDG #>

class PackNTDG : Pack {
    
    [ConstructorName('Empty')]
    PackNTDG() {} <# END PackNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    PackNTDG(
         [string]  $code
        ,[string]  $name
        ,[DateTime]$date_release#nullable
        ,[int]     $size
        ,[int]     $position
        ,[int]     $ffgId#nullable
        ,[string]  $cycle_code
    ) {
        $this.code         = $code
        $this.name         = $name
        $this.date_release = $date_release#nullable
        $this.size         = $size
        $this.position     = $position
        $this.ffgId        = $ffgId#nullable
        $this.cycle_code   = $cycle_code
    } <# END PackNTDG() [ConstructorName('CardFromApi')] #>

}<# END class PackNTDG #>

class SideNTDG : Side {
    [ConstructorName('Empty')]
    SideNTDG() {} <# END SideNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    SideNTDG(
         [string]$name
        ,[string]$code
    ) {
        $this.name = $name
        $this.code = $code
    } <# END SideNTDG() [ConstructorName('CardFromApi')] #>

}<# END class SideNTDG #>

class CardCardTypeNTDG : CardType {

    [ConstructorName('Empty')]
    CardTypeNTDG() {} <# END CardTypeNTDG() [ConstructorName('Empty')] #>

    [ConstructorName('CardFromApi')]
    CardTypeNTDG(
         [string]$code
        ,[string]$name
        ,[string]$side_code
        ,[boolean]$is_subtype
        ,[int]$position
    ) {
        $this.code       = $code
        $this.name       = $name
        $this.side_code  = $side_code
        $this.is_subtype = $is_subtype
        $this.position   = $position

    } <# END CardTypeNTDG() [ConstructorName('CardFromApi')] #>

}<# END class CardTypeNTDG #>



