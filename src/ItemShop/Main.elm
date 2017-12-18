module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg, initCmd)

import Html exposing (a, button, div, table, td, text, tr)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import ItemShop.Item exposing (Item, addModifiers, itemTableHeader, viewItem)
import ItemShop.Items exposing (baseItems)
import ItemShop.Modifier exposing (Modifier, viewModifier)
import ItemShop.Modifiers exposing (allModifiers)
import ItemShop.RandomItem exposing (randomItem)
import Random
import Task


type alias Model =
    { items : List Item
    }


type Msg
    = NewItem Item
    | GenerateNewItem


init : Model
init =
    Model []


initCmd : Cmd Msg
initCmd =
    Cmd.batch <| List.repeat 10 <| Random.generate NewItem randomItem


view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick GenerateNewItem ] [ text "New item" ]
        , table [ class "itemshop" ] <|
            itemTableHeader
                :: List.map viewItem model.items
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateNewItem ->
            ( model, Random.generate NewItem randomItem )

        NewItem item ->
            ( { model | items = item :: model.items }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
