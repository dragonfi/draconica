module ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg, initCmd)

import Dict exposing (Dict)
import Html exposing (Html, a, button, div, input, label, table, td, text, tr)
import Html.Attributes exposing (checked, class, type_)
import Html.Events exposing (onClick)
import ItemShop.Item exposing (Item, actualPrice, addModifiers, itemTableHeader, viewItem)
import ItemShop.Items
    exposing
        ( travelGear
        , weapons
        , specialtyGoods
        , rations
        , sundries
        , campingEquipment
        , containers
        )
import ItemShop.Modifier exposing (Modifier, viewModifier)
import ItemShop.Modifiers exposing (allModifiers)
import ItemShop.RandomItem exposing (randomItem)
import Random
import Task


type alias BroadCategory =
    { isSelected : Bool
    , items : List Item
    }


type alias BroadCategories =
    Dict.Dict String BroadCategory


type alias Model =
    { items : List Item
    , broadCategories : BroadCategories
    }


type Msg
    = NewItem Item
    | GenerateNewItem Int
    | SortByPrice
    | SwitchCategory String


init : Model
init =
    Model [] <|
        Dict.fromList
            [ ( "Weapons", BroadCategory True weapons )
            , ( "Travel gear", BroadCategory True travelGear )
            , ( "Sundries", BroadCategory True sundries )
            , ( "Camping equipment", BroadCategory True campingEquipment )
            , ( "Containers", BroadCategory True containers )
            , ( "Goods", BroadCategory False specialtyGoods )
            , ( "Rations", BroadCategory False rations )
            ]


initCmd : Cmd Msg
initCmd =
    Random.generate NewItem (randomItem (activeItems init.broadCategories) allModifiers)
        |> List.repeat 20
        |> Cmd.batch


checkbox : Msg -> String -> Bool -> Html Msg
checkbox msg name isChecked =
    label []
        [ text name
        , input [ type_ "checkbox", onClick msg, checked isChecked ] []
        ]


categoryCheckbox : String -> Model -> Html Msg
categoryCheckbox category model =
    checkbox (SwitchCategory category) category (categoryActive model category)


switchBroadCategory : BroadCategory -> BroadCategory
switchBroadCategory broadCategory =
    { broadCategory | isSelected = not broadCategory.isSelected }


switchCategory : String -> BroadCategories -> BroadCategories
switchCategory category broadCategories =
    Dict.update category (Maybe.map switchBroadCategory) broadCategories


categoryActive : Model -> String -> Bool
categoryActive model category =
    Dict.get category model.broadCategories
        |> Maybe.withDefault (BroadCategory False [])
        |> .isSelected


view : Model -> Html.Html Msg
view model =
    div []
        [ div [ class "clear-both" ]
            [ categoryCheckbox "Travel gear" model
            , categoryCheckbox "Weapons" model
            , categoryCheckbox "Sundries" model
            , categoryCheckbox "Camping equipment" model
            , categoryCheckbox "Containers" model
            , categoryCheckbox "Goods" model
            , categoryCheckbox "Rations" model
            ]
        , button
            [ onClick (GenerateNewItem 1) ]
            [ text "New item" ]
        , button [ onClick (GenerateNewItem 5) ] [ text "+5 item" ]
        , button [ onClick (SortByPrice) ] [ text "Sort" ]
        , table [ class "itemshop" ] <|
            itemTableHeader
                :: List.map viewItem model.items
        ]


activeItems : BroadCategories -> List Item
activeItems categories =
    Dict.filter (\key category -> category.isSelected) categories
        |> Dict.values
        |> List.map .items
        |> List.concat


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GenerateNewItem numberOfItems ->
            ( model
            , Random.generate NewItem (randomItem (activeItems model.broadCategories) allModifiers)
                |> List.repeat numberOfItems
                |> Cmd.batch
            )

        NewItem item ->
            ( { model | items = item :: model.items }, Cmd.none )

        SortByPrice ->
            ( { model | items = List.sortBy actualPrice model.items }, Cmd.none )

        SwitchCategory category ->
            ( { model | broadCategories = switchCategory category model.broadCategories }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
