module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg, initCmd)

import Html exposing (a, button, div, table, td, text, tr)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import ItemShop.Item exposing (Item, actualPrice, addModifiers, itemTableHeader, viewItem)
import ItemShop.Items exposing (allItems)
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
    | GenerateNewItem Int
    | SortByPrice


init : Model
init =
    Model []


initCmd : Cmd Msg
initCmd =
    Random.generate NewItem (randomItem allItems allModifiers)
        |> List.repeat 20
        |> Cmd.batch


view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick (GenerateNewItem 1) ] [ text "New item" ]
        , button [ onClick (GenerateNewItem 5) ] [ text "+5 item" ]
        , button [ onClick (SortByPrice) ] [ text "Sort" ]
        , table [ class "itemshop" ] <|
            itemTableHeader
                :: List.map viewItem model.items
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateNewItem numberOfItems ->
            ( model
            , Random.generate NewItem (randomItem allItems allModifiers)
                |> List.repeat numberOfItems
                |> Cmd.batch
            )

        NewItem item ->
            ( { model | items = item :: model.items }, Cmd.none )

        SortByPrice ->
            ( { model | items = List.sortBy actualPrice model.items }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
