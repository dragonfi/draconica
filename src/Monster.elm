module Monster exposing (..)

import Html exposing (td, th, tr, text)
import String


type Terrain
    = AllTerrain
    | DarkForest
    | Grassland
    | Highlands
    | Desert
    | Mountain
    | Wasteland
    | Woods
    | RockyTerrain
    | Swamp
    | Pond
    | Jungle
    | River
    | Sea
    | Alpine
    | AllHighLevelTerrain
    | LowAlpines


type Season
    = Spring
    | Summer
    | Fall
    | Winter
    | NoSeason


type MonsterType
    = Egg
    | PhantomBeast
    | PhantomPlant
    | Nekogoblin
    | Demonstone
    | Undead
    | Gobroach
    | Demon
    | Magical
    | WildDragon


type alias Monster =
    { name : String
    , level : Int
    , habitat : List Terrain
    , season : Season
    , monsterType : MonsterType
    , notes : String
    }


viewMonster : Monster -> Html.Html a
viewMonster monster =
    tr []
        [ td [] [ monster.name |> text ]
        , td [] [ text <| String.join ", " <| List.map toString monster.habitat ]
        ]


monsterTableHeader : Html.Html a
monsterTableHeader =
    tr [] [ th [] [ text "Name" ], th [] [ text "Habitat" ] ]
