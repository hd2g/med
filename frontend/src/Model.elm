module Model exposing (Model, Line, empty, emptyLine)

type alias Model = List Line

type alias Line =
  { id : String -- UUID
  , text : String
  , created : Int -- Time.Posix
  , updated : Int -- Time.Posix
  }

emptyLine : () -> Line
emptyLine _ =
  { id = "***dummy id***"
  , text = ""
  , created = 12345
  , updated = 12345
  }

empty : () -> Model
empty _ = []
