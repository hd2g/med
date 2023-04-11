module Model exposing (..)

import Date exposing (Date)
import UUID exposing (UUID)
import Main exposing (undefined)

type alias Model = List Line

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

emptyLine : () -> Line
emptyLine = undefined
