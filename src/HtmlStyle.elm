module HtmlStyle exposing (withStyle)

import Html exposing (div, node, text)


withStyle : String -> (model -> Html.Html a) -> model -> Html.Html a
withStyle styleRules view model =
    div []
        [ node "style" [] [ text styleRules ]
        , view model
        ]
