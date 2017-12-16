module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg)

import Html exposing (a, div, table, td, text, tr)
import ItemShop.Modifier exposing (Modifier, viewModifier)
import ItemShop.Modifiers exposing (allModifiers)


type alias Model =
    List Modifier


type Msg
    = Noop


init : Model
init =
    allModifiers


view : Model -> Html.Html Msg
view model =
    div []
        [ table [] <| List.map viewModifier model ]


update : Msg -> Model -> ( Model, Cmd a )
update mgs model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
