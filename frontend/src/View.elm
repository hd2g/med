module View exposing (..)

import Update exposing (..)

import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Main exposing (undefined)

emptyLine : () -> Html msg
emptyLine = undefined

-- view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]
