module Update exposing (Msg, update)

import Model exposing (Model, Line)

type Msg
  = InsertLine Line

update : Msg -> Model -> Model
update msg model =
  case msg of
    InsertLine line -> line :: model
