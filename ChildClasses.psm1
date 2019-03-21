
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



    CardNTDG() {

    $this.available_quantity = 0

    $this.utility_flag = $false

    }<# End CardNTDG() #>

}<# End class CardNTDG #>