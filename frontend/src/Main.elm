module Main exposing (main)

import Browser
import Model exposing (Model)
import View exposing (view)
import Update exposing (Msg, update)
import Update exposing (Msg)
import Html exposing (..)

main : Program () Model Msg
main =
  Browser.sandbox
    { init = init
    , view = view
    , update = update
    }

init : Model
init = Model.empty ()
