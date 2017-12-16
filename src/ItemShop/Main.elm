module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg)

import Html exposing (a, div, table, td, text, tr)
import ItemShop.Modifier exposing (Modifier, viewModifier)
import ItemShop.Modifiers exposing (allModifiers)
import ItemShop.Item exposing (Item, viewItem, addModifiers)
import ItemShop.Items exposing (baseItems)


type alias Model =
    List Item


type Msg
    = Noop


init : Model
init =
    List.map (addModifiers allModifiers) baseItems


view : Model -> Html.Html Msg
view model =
    div []
        [ table [] <| List.map viewItem model ]


update : Msg -> Model -> ( Model, Cmd a )
update mgs model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
