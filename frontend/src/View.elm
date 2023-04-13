module View exposing (view)

import Update exposing (Msg)
import Model exposing (Model)
import Html exposing (..)
import Helpers exposing (undefined)
import Model exposing (Line)

type alias HtmlElement msg = List (Attribute msg) -> List (Html msg) -> Html msg

layout : HtmlElement msg
layout = undefined ()

brief : Line -> HtmlElement msg
brief line attrs tags =
  div [] []

paper : Model -> HtmlElement msg
paper lines attrs tags =
  div [] []

view : Model -> Html Msg
view model =
  layout []
    [ brief (List.head model |> Maybe.withDefault (Model.emptyLine ())) [] []
    , paper (List.tail model |> Maybe.withDefault []) [] []
    ]
