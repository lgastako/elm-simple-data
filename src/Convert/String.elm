module Convert.String where
{-| Convert wrappers for strings 

@docs attemptToInt, attemptToFloat
-}

import Convert exposing (defaultResult)

import String

{-|
  Try to convert a string to an int, given a default value
  Default to the value if it failed to convert
-}
attemptToInt : Int -> String -> Int
attemptToInt old newNumber = defaultResult String.toInt old newNumber

{-|
  Try to convert a string to a float, given a default value
  Default to the value if it failed to convert
-}
attemptToFloat : Float -> String -> Float
attemptToFloat old newNumber = defaultResult String.toFloat old newNumber