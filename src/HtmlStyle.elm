module HtmlStyle exposing (withStyle)

import Html exposing (div, node, text)
import Html.Attributes exposing (name, content)


withStyle : String -> (model -> Html.Html a) -> model -> Html.Html a
withStyle styleRules view model =
    div []
        [ node "style" [] [ text styleRules ]
        , node "meta" [ name "viewport", content "width=device-width, initial-scale=1" ] []
        , view model
        ]
