module Convert.List where
{-| Convert wrappers for list 

@docs attemptFromString
-}

import Convert exposing (defaultMaybe)

import List exposing (head, tail)

{-|
  Try to convert a string to a date, given a default value
  Default to the value if it failed to convert
-}
attemptTail : List -> String -> List
attemptTail list defaultList = defaultMaybe tail list defaultList

{-|
  Try to convert a string to a date, given a default value
  Default to the value if it failed to convert
-}
attemptHead : List -> String -> List
attemptHead list defaultList = defaultMaybe head list defaultList