module Convert (defaultResult, defaultMaybe, defaultActionResult) where

{-| Convert aims to simplify parsing data into different data types. 

Ideal for simplifying the understanding required to make applications
which deals with user input and data.

@docs defaultResult, defaultMaybe


Internally there are also functions that instead take default callbacks
rather than default values

@docs defaultActionResult
-}

import Result exposing (Result(..))
import Maybe exposing (Maybe(..))


{-| 
    Try to use converter to convert a value and
    return the converted value. If an err happens,
    instead pass the message to the given function
-}
defaultActionResult : (b -> Result String a) -> (String -> a) -> b -> a
defaultActionResult converter defaultValue newValue =
  case converter newValue of
    Ok x -> x
    Err message -> defaultValue

{-| 
    Try to use converter to convert a value and
    return the converted value. If an err happens,
    instead return a given default value
-}
defaultResult : (b -> Result String a) -> a -> b -> a
defaultResult converter defaultValue newValue = 
    defaultActionResult converter defaultValue (\_ -> newValue)

{-| 
    Try to use converter to convert a value and
    return the converted value. If nothing happens,
    instead return a given default value
-}
defaultMaybe : (b -> Maybe a) -> a -> b -> a
defaultMaybe converter defaultValue newValue =
  case converter newValue of
    Just x -> x
    Nothing -> defaultValue
