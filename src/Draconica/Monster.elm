module Draconica.Monster exposing (..)

import Html exposing (td, text, th, tr)
import Html.Attributes exposing (class)


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
    }


viewMonster : Monster -> Html.Html a
viewMonster monster =
    tr [ class "draconica-monster" ]
        [ td [] [ monster.level |> toString |> text ]
        , td [] [ monster.name |> text ]
        , td [] [ List.map toString monster.habitat |> String.join ", " |> text ]
        , td [] [ monster.season |> toString |> text ]
        , td [] [ monster.monsterType |> toString |> text ]
        ]


monsterTableHeader : Html.Html a
monsterTableHeader =
    tr [ class "draconica-monsterheader" ]
        [ th [] [ text "Level" ]
        , th [] [ text "Name" ]
        , th [] [ text "Habitat" ]
        , th [] [ text "Season" ]
        , th [] [ text "Type" ]
        ]
