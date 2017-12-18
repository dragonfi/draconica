module Draconica.Main exposing (init, view, update, subscriptions, Model, Msg)

import Html exposing (text, table, td, tr, th, input, div)
import Html.Attributes exposing (placeholder, class)
import Html.Events exposing (onInput)
import String exposing (toLower, contains)
import Platform.Cmd
import Draconica.Monster exposing (Monster, viewMonster, monsterTableHeader)
import Draconica.Monsters exposing (allMonsters)


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
        [ input [ placeholder "search string", onInput NewFilter ] []
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
