module View exposing (..)

import Update exposing (..)

import Html exposing (Attribute, Html, div, button, text)
import Html.Events exposing (onClick)
import Main exposing (undefined)
import Model exposing (Model)

type alias HtmlElement = List (Attribute msg) -> List (Html msg) -> Html msg

layout : HtmlElement
layout = undefined ()

emptyLine : () -> Html msg
emptyLine = undefined ()

title : HtmlElement
title = undefined ()

page : HtmlElement
page = undefined ()

view : Model -> Html Msg
view model =
  layout []
    [ title [] []
    , page [] []
    ]
