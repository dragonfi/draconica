module ItemShop.Modifier exposing (Modifier, viewModifier)

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
