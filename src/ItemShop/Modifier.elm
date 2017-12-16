module ItemShop.Modifier exposing (Modifier, viewModifier, modifiedPrice)

import Html exposing (tr, td, text)


type alias Modifier =
    { characteristic : String
    , multiplier : Float
    , addend : Int
    }


viewModifier : Modifier -> Html.Html a
viewModifier modifier =
    tr []
        [ td [] [ modifier.characteristic |> toString |> text ]
        , td [] [ text "x", modifier.multiplier |> toString |> text ]
        , td [] [ text "+", modifier.addend |> toString |> text ]
        ]


allMultipliers : List Modifier -> Float
allMultipliers modifiers =
    modifiers
        |> List.map (\m -> m.multiplier)
        |> List.foldl (\a b -> a * b) 1.0


allAddends : List Modifier -> Int
allAddends modifiers =
    modifiers
        |> List.map (\m -> m.addend)
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
