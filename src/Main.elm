module Main exposing (main)

import Html exposing (text, table, td, tr, th, input, div)
import Html.App as App
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import String exposing (toLower, contains)
import Platform.Cmd
import HtmlStyle exposing (withStyle)
import Monster exposing (Monster, viewMonster, monsterTableHeader)
import Monsters exposing (allMonsters)


type alias Model =
    { allMonsters : List Monster, selectedMonsters : List Monster }


type Msg
    = NewFilter String


initialModel : Model
initialModel =
    let
        monsters =
            List.sortBy .level allMonsters
    in
        Model monsters monsters


viewModel : Model -> Html.Html Msg
viewModel model =
    div []
        [ input [ placeholder "search string", onInput NewFilter ] []
        , table [] <| monsterTableHeader :: List.map viewMonster model.selectedMonsters
        ]


update : Msg -> Model -> ( Model, Cmd a )
update msg model =
    case msg of
        NewFilter query ->
            ( { model
                | selectedMonsters = List.filter (monsterMatches query) model.allMonsters
              }
            , Cmd.none
            )


monsterMatches : String -> Monster -> Bool
monsterMatches query monster =
    let
        orOperator =
            ","
    in
        List.any (allWordsFoundIn monster) <| String.split orOperator query


allWordsFoundIn : Monster -> String -> Bool
allWordsFoundIn monster wordsSeparatedByWhitespace =
    List.all (substringFoundIn monster) <| String.words wordsSeparatedByWhitespace


substringFoundIn : Monster -> String -> Bool
substringFoundIn monster substring =
    let
        part =
            toLower substring

        monsterAsString =
            monster |> toString |> toLower
    in
        contains part monsterAsString


indexPageStyle : String
indexPageStyle =
    """
    body {
        margin: 1em;
        color: #586e75;
    }
    table, td, th {
        border: solid 1px #93a1a1;
        border-collapse: collapse;
        background-color: #fdf6e3;
    }

    input {
        display: block;
        margin-bottom: 0.5em;
        border: solid 1px #93a1a1;
        border-radius: 0.2em;
        background-color: #fdf6e3;
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
        , update = update
        , view = viewModel |> withStyle indexPageStyle
        }
