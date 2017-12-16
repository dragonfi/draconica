module HtmlStyle.HtmlStyle exposing (withStyle, defaultStyle)

import Html exposing (div, node, text)
import Html.Attributes exposing (name, content)


withStyle : String -> (model -> Html.Html a) -> model -> Html.Html a
withStyle styleRules view model =
    div []
        [ node "style" [] [ text styleRules ]
        , node "meta" [ name "viewport", content "width=device-width, initial-scale=1" ] []
        , view model
        ]


defaultStyle : String
defaultStyle =
    """
    body {
        margin: 0.5em;
        color: #586e75;
    }
    table, td, th {
        border: solid 1px #93a1a1;
        border-collapse: collapse;
        background-color: #fdf6e3;
    }

    input {
        display: block;
        margin-bottom: 0.5em;
        border: solid 1px #93a1a1;
        border-radius: 0.2em;
        background-color: #fdf6e3;
    }

    //table tr:nth-child(even) td {
    //    background-color: #eee8d5;
    //}
    """
