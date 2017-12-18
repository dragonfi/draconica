module ItemShop.Modifier exposing (Modifier, viewModifier, modifiedPrice, regular)

import Html exposing (td, text, tr, span)
import Html.Attributes exposing (class)


type alias Modifier =
    { characteristic : String
    , multiplier : Float
    , addend : Int
    }


regular : Modifier
regular =
    Modifier "Regular" 1.0 0


viewModifier : Modifier -> Html.Html a
viewModifier modifier =
    span
        [ class "itemshop-modifier" ]
        [ modifier.characteristic |> text ]


allMultipliers : List Modifier -> Float
allMultipliers modifiers =
    modifiers
        |> List.map (\m -> m.multiplier)
        |> List.foldl (\a b -> a * b) 1.0


allAddends : List Modifier -> Int
allAddends modifiers =
    modifiers
        |> List.map .addend
        |> List.sum


modifiedPrice : List Modifier -> Int -> Int
modifiedPrice modifiers basePrice =
    let
        initialPrice =
            toFloat basePrice

        multipliers =
            allMultipliers modifiers

        addends =
            allAddends modifiers |> toFloat
    in
        round (initialPrice * multipliers + addends)
