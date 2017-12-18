module ItemShop.Item
    exposing
        ( Item
        , Category(..)
        , baseItem
        , viewItem
        , addModifiers
        , actualPrice
        , itemTableHeader
        )

import Html exposing (a, td, text, tr, th)
import Html.Attributes exposing (class)
import ItemShop.Modifier exposing (Modifier, modifiedPrice, viewModifier)


type Category
    = SpecialtyGood
    | Weapon
    | Armor
    | Shield
    | Shoe
    | Cape
    | Staff
    | Hat
    | Accessory
    | Sundry
    | CampingEquipment
    | SmallContainer
    | BigContainer


type alias Item =
    { name : String
    , category : Category
    , basePrice : Int
    , modifiers : List Modifier
    }


baseItem : String -> Category -> Int -> Item
baseItem name category basePrice =
    Item name category basePrice []


addModifiers : List Modifier -> Item -> Item
addModifiers modifiers item =
    { item | modifiers = List.append item.modifiers modifiers }


actualPrice : Item -> Int
actualPrice item =
    modifiedPrice item.modifiers item.basePrice


viewItem : Item -> Html.Html a
viewItem item =
    let
        modifierNames =
            List.map .characteristic item.modifiers
    in
        tr [ class "itemshop-item" ]
            [ td [] [ item.basePrice |> toString |> text ]
            , td [] [ item |> actualPrice |> toString |> text ]
            , td [] [ item.name |> text ]
            , td [] [ item.category |> toString |> text ]
            , td [] [ String.join ", " modifierNames |> text ]
            ]


itemTableHeader : Html.Html a
itemTableHeader =
    tr [ class "itemshop-item-header" ]
        [ th [] [ text "Base Price" ]
        , th [] [ text "Price" ]
        , th [] [ text "Name" ]
        , th [] [ text "Category" ]
        , th [] [ text "Modifiers" ]
        ]
