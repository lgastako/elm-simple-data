module Converting (default, attemptStringToInt, attemptDateFromString) where

import String
import Date exposing (Date)

import Result exposing (Result(..))


{- 
    Try to use converter to convert a value and
    return the converted value. If an err happens,
    instead return a given default value
-}
default : (b -> Result String a) -> a -> b -> a
default converter defaultValue newValue =
  case converter newValue of
    Ok x -> x
    Err _ -> defaultValue

{-
  Try to convert a string to an int, given a default value
  Default to the value if it failed to convert
-}
attemptStringToInt : Int -> String -> Int
attemptStringToInt old newNumber = default String.toInt old newNumber

{-
  Try to convert a string to a float, given a default value
  Default to the value if it failed to convert
-}
attemptStringToFloat : Float -> String -> Float
attemptStringToFloat old newNumber = default String.toInt old newNumber


{-
  Try to convert a string to a date, given a default value
  Default to the value if it failed to convert
-}
attemptDateFromString : Date -> String -> Date
attemptDateFromString old new = default Date.fromString old new