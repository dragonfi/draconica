module ItemShop.Item exposing (Item, Category(..), baseItem, viewItem, addModifiers, actualPrice)

import Html exposing (td, text, tr)
import ItemShop.Modifier exposing (Modifier, modifiedPrice)


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
    tr []
        [ td [] [ item.name |> text ]
        , td [] [ item.basePrice |> toString |> text ]
        , td [] [ item |> actualPrice |> toString |> text ]
        , td [] [ item.modifiers |> toString |> text ]
        ]
