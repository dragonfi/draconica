module Main exposing (main)

import Html exposing (text, table, td, tr, th)
import Html.App as App
import HtmlStyle exposing (withStyle)
import Monster exposing (Monster, viewMonster, monsterTableHeader)


type alias Model =
    { monsters : List Monster }


type Msg
    = None


initialModel : Model
initialModel =
    Model
        <| [ Monster "Walking Egg" 1 [ "All" ] "Egg" ""
           , Monster "Demon Boar" 5 [ "Woodland", "DarkForest" ] "Beast" ""
           ]


viewModel : Model -> Html.Html a
viewModel model =
    table [] <| monsterTableHeader :: List.map viewMonster model.monsters


indexPageStyle : String
indexPageStyle =
    """
    table, td, th {
        border-width: 1px;
        color: #586e75;
        border-color: #93a1a1;
        background-color: #fdf6e3;
        border-style: solid;
        border-collapse: collapse;
    }

    //table tr:nth-child(even) td {
    //    background-color: #eee8d5;
    //    }
    }
    """


main : Program Never
main =
    App.program
        { init = ( initialModel, Cmd.none )
        , subscriptions = \model -> Sub.none
        , update = \message -> \model -> ( initialModel, Cmd.none )
        , view = viewModel |> withStyle indexPageStyle
        }
