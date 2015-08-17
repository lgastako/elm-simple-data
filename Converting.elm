module Converting where

import String exposing (toInt)

import Result exposing (Result(..))

{-
  Try to convert a string to a number, given a default value
  Default to the value if it failed to convert
-}
attemptToInt : Int -> String -> Int
attemptToInt old newNumber = 
  case toInt newNumber of
    Ok x -> x
    Err _ -> old
