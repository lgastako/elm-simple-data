module Convert.List where
{-| Convert wrappers for list 

@docs attemptTail, attemptHead
-}

import Convert exposing (defaultMaybe)

import List exposing (head, tail)

{-|
  Try to return the tail of a list, returning default value if failed
-}
attemptTail : List a -> List a -> List a
attemptTail defaultList list  = defaultMaybe tail defaultList list

{-|
  Try to return the head of a list, returning default value if failed
-}
attemptHead : a -> List a -> a
attemptHead defaultItem list  = defaultMaybe head defaultItem list