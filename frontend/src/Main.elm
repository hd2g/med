module Main exposing (..)

import Css
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw
import Tailwind.Theme as Tw
import Html as H
import Html.Attributes exposing (classList)

main : H.Html msg
main =
  H.text "ok"
  -- layout []
  --   [ title [] []
  --   , page [] [ H.text "ok" ]
  --   ]

undefined : () -> a
undefined _ = Debug.todo "undefined..."

type alias HtmlElement msg = List (H.Attribute msg) -> List (H.Html msg) -> H.Html msg

layout : HtmlElement msg
layout moreAttrs moreTags =
  Html.toUnstyled <|
    Html.div [ Attr.css [] ] []

title : HtmlElement msg
title = undefined ()

page : HtmlElement msg
page = undefined ()
