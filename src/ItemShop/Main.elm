module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg)

import Html exposing (a, div, table, td, text, tr)
import Html.Attributes exposing (class)
import ItemShop.Item exposing (Item, addModifiers, itemTableHeader, viewItem)
import ItemShop.Items exposing (baseItems)
import ItemShop.Modifier exposing (Modifier, viewModifier)
import ItemShop.Modifiers exposing (allModifiers)


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
        [ table [ class "itemshop" ] <|
            itemTableHeader
                :: List.map viewItem model
        ]


update : Msg -> Model -> ( Model, Cmd a )
update mgs model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
