module Main exposing (..)

import Update exposing (update)
import View exposing (view)

import Browser

main = Browser.sandbox
  { init = 1
  , update = update
  , view = view
  }

undefined : () -> a
undefined _ = Debug.todo "undefined!"
