<#
borrowed from the NetrunnerDB github project
https://github.com/Alsciende/netrunnerdb/blob/master/src/AppBundle/Entity/
#>


class Card {
#region Properties
    [int]$id
    [DateTime]$dateUpdate
    [string]$code
    [string]$title
    [string]$keywords#nullable
    [string]$text
    [int]$advancementCost
    [int]$agendaPoints
    [int]$baseLink
    [int]$cost#nullable
    [int]$factionCost#nullable
    [string]$flavor#nullable
    [string]$illustrator
    [int]$influenceLimit#nullable
    [int]$memoryCost
    [int]$minimumDeckSize
    [int]$position
    [int]$quantity
    [int]$strength
    [int]$trashCost#nullable
    [boolean]$uniqueness
    [int]$deckLimit
    [PSObject[]]$decklists
    [Pack]$pack
    [Type]$type
    [Faction]$faction
    [Side]$side
    [string]$imageUrl#nullable
    [PSObject[]]$reviews
    [PSObject[]]$rulings
    [DateTime]$dateCreation
    [int]$globalPenalty#nullable
    [int]$universalFactionCost#nullable
    [boolean]$isRestricted
#endregion Properties

}<# END class Card #>


class Pack {
    [int]$id
    [string]$code
    [string]$name
    [DateTime]$dateRelease#nullable
    [int]$size
    [int]$position
    [int]$ffgId#nullable
    [PSObject[]]$decklists
    [PSObject[]]$cards
    [Cycle]$cycle
    [DateTime]$dateCreation
    [DateTime]$dateUpdate
    [int]$cardCount
}<# END class Pack #>


class Side {
    [int]$id
    [string]$name
    [PSObject[]]$cards
    [PSObject[]]$factions
    [PSObject[]]$decks
    [PSObject[]]$decklists
    [string]$code
    [DateTime]$dateCreation
    [DateTime]$dateUpdate
}<# END class Side #>



class Type {
    [int]$id
    [string]$code
    [string]$name
    [Side]$side
    [boolean]$isSubtype
    [DateTime]$dateCreation
    [DateTime]$dateUpdate
    [int]$position
    [PSObject[]]$cards
}<# END class Type #>

