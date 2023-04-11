module Main exposing (..)

import Date exposing (Date)
import UUID exposing (UUID)

type alias Line =
  { text : String
  , id : UUID
  , created : Date
  , updated : Date
  , authors : List Author
  }

type alias Author =
  { name : String
  , id : UUID
  }
