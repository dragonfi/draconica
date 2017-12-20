module Draconica.Main exposing (init, view, update, subscriptions, Model, Msg)

import Draconica.Monster exposing (Monster, monsterTableHeader, viewMonster)
import Draconica.Monsters exposing (allMonsters)
import Html exposing (aside, div, input, span, table, td, text, th, tr)
import Html.Attributes exposing (class, placeholder)
import Html.Events exposing (onInput)
import Platform.Cmd
import String exposing (contains, toLower)


type alias Model =
    { allMonsters : List Monster, selectedMonsters : List Monster }


type Msg
    = NewFilter String


init : Model
init =
    let
        monsters =
            List.sortBy .level allMonsters
    in
        Model monsters monsters


view : Model -> Html.Html Msg
view model =
    div [ class "draconica" ]
        [ input [ class "search-box", placeholder "search string", onInput NewFilter ] []
        , aside [ class "search-example" ] [ text "Example: Fall Egg, 6 Undead" ]
        , table [ class "draconica-monsters" ] <|
            monsterTableHeader
                :: List.map viewMonster model.selectedMonsters
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


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


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
