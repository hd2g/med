module Update exposing (..)

type Msg = Increment | Decrement

-- update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Increment -> model + 1
    Decrement -> model - 1

