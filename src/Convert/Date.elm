module Convert.Date where
{-| Convert wrappers for date 

@docs attemptFromString
-}

import Convert exposing (defaultResult)

import Date exposing (Date)

{-|
  Try to convert a string to a date, given a default value
  Default to the value if it failed to convert
-}
attemptFromString : Date -> String -> Date
attemptFromString defaultDate new = defaultResult Date.fromString defaultDate new