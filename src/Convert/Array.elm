module Convert.Array (nested2FromList) where
{-|
Module for working with arrays.

Currently provides a way of working between lists and arrays in a neater fasion.

@docs nested2FromList
-}

import Array

nestedFromList : Int -> List a -> Array a
nestedFromList layers nestedList =
  if layers < 1 then Array.fromList nestedList else
    nestedFromList <| List.map (Array.fromList) nestedList

{-|
  Convert a list of lists into an array of arrays
-}
nested2FromList : List (List a) -> Array (Array a)
nested2FromList nestedList = Array.fromList <| List.map (Array.fromList) nestedList