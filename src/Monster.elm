module Monster exposing (..)

import Html exposing (td, th, tr, text)
import String


type alias Monster =
    { name : String
    , level : Int
    , terrains : List String
    , monsterType : String
    , notes : String
    }


viewMonster : Monster -> Html.Html a
viewMonster monster =
    tr []
        [ td [] [ monster.name |> text ]
        , td [] [ String.join ", " monster.terrains |> text ]
        ]


monsterTableHeader : Html.Html a
monsterTableHeader =
    tr [] [ th [] [ text "Name" ], th [] [ text "Terrains" ] ]
