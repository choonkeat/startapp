module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (style)


main : Html msg
main =
    div
        [ style "display" "flex"
        , style "flex-direction" "column"
        , style "align-items" "center"
        , style "justify-content" "center"
        , style "min-height" "100vh"
        , style "font-family" "system-ui, sans-serif"
        , style "background" "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
        , style "color" "white"
        ]
        [ h1
            [ style "font-size" "3rem"
            , style "margin-bottom" "1rem"
            ]
            [ text "Hello, World!" ]
        , p
            [ style "font-size" "1.5rem"
            , style "opacity" "0.9"
            ]
            [ text "Have a wonderful day!" ]
        ]
