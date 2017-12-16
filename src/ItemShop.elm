module Main exposing (main)

import Html exposing (Html)
import HtmlStyle.HtmlStyle exposing (withStyle, defaultStyle)
import ItemShop.Main exposing (init, view, update, subscriptions, Model, Msg)


main : Program Never Model Msg
main =
    Html.program
        { init = ( init, Cmd.none )
        , subscriptions = subscriptions
        , update = update
        , view = view |> withStyle defaultStyle
        }
