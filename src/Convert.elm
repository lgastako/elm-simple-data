module Convert (default) where

{-| Convert aims to simplify parsing data into different data types. 

Ideal for simplifying the understanding required to make applications
which deals with user input and data.

@docs default
-}

import Result exposing (Result(..))

{-| 
    Try to use converter to convert a value and
    return the converted value. If an err happens,
    instead return a given default value
-}
default : (b -> Result String a) -> a -> b -> a
default converter defaultValue newValue =
  case converter newValue of
    Ok x -> x
    Err _ -> defaultValue