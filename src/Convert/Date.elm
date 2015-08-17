module Convert.Date where
{-| Convert wrappers for date 

@docs attemptFromString
-}

import Convert exposing (default)

import Date exposing (Date)

{-|
  Try to convert a string to a date, given a default value
  Default to the value if it failed to convert
-}
attemptFromString : Date -> String -> Date
attemptFromString old new = default Date.fromString old new