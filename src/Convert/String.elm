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
attemptToInt defaultNumber newNumber = defaultResult String.toInt defaultNumber newNumber

{-|
  Try to convert a string to a float, given a default value
  Default to the value if it failed to convert
-}
attemptToFloat : Float -> String -> Float
attemptToFloat defaultNumber newNumber = defaultResult String.toFloat defaultNumber newNumber