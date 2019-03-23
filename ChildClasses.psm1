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
