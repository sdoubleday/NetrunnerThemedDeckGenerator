<#
borrowed from the NetrunnerDB APIs
https://netrunnerdb.com/api/doc
#>


class Card {
#region Properties
    [string]$code
    [string]$title
    [string]$keywords#nullable
    [string]$text
    [int]$advancement_cost
    [int]$agenda_points
    [int]$base_link
    [int]$cost#nullable
    [int]$faction_cost#nullable
    [string]$flavor#nullable
    [string]$illustrator
    [int]$influence_limit#nullable
    [int]$memory_cost
    [int]$minimum_deck_size
    [int]$position
    [int]$quantity
    [int]$strength
    [int]$trash_cost#nullable
    [boolean]$uniqueness
    [int]$deck_limit
    [string]$pack_code
    [string]$type_code
    [string]$faction_code
    [string]$side_code
    [string]$image_url#nullable
#endregion Properties

}<# END class Card #>

class Cycle {
    [string]$code
    [string]$name
    [int]$position
    [int]$size
    [boolean]$rotated

}<# END class Cycle #>

class Faction {
    [string]$code
    [string]$name
    [boolean]$is_mini
    [Side]$side_code
    [string]$color
}<# END class Faction #>

class Mwl {
    [int]$id
    [string]$code
    [string]$name
    [DateTime]$date_start
    [boolean]$active
    [PSObject[]]$cards
    [DateTime]$date_creation
    [DateTime]$date_update
}<# END class Mwl #>

class Pack {
    [string]$code
    [string]$name
    [DateTime]$date_release#nullable
    [int]$size
    [int]$position
    [int]$ffgId#nullable
    [string]$cycle_code
}<# END class Pack #>

class Side {
    [string]$name
    [string]$code
}<# END class Side #>

class Type {
    [string]$code
    [string]$name
    [string]$side_code
    [boolean]$is_subtype
    [int]$position
}<# END class Type #>

