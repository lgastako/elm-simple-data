module Convert.Color (
  toRgbTuple, toRgbaTuple, 
  toHslTuple, toHslaTuple,
  fromRgbTuple, fromRgbaTuple,
  fromHslTuple, fromHslaTuple) where
{-|
Module for handling converting between colors and other types

Currently provides a way to allow easier transistion between Colors and tuples
Ideal for when needed comparable for use in dicts, sets, etc of colors

Creating tuples
@docs toRgbTuple, toRgbaTuple, toHslTuple, toHslaTuple

From tuples
@docs fromRgbTuple, fromRgbaTuple, fromHslTuple, fromHslaTuple
-}
import Color exposing (..)

{-|
  Convert a color into a rgb tuple
-}
toRgbTuple : Color -> (Int, Int, Int)
toRgbTuple color =
  let 
    rgbColor = toRgb color
  in 
    (rgbColor.red, rgbColor.green, rgbColor.blue)

{-| 
  Convert a color into a rgba tuple
-}
toRgbaTuple : Color -> (Int, Int, Int, Float)
toRgbaTuple color =
  let 
    rgbColor = toRgb color
  in 
    (rgbColor.red, rgbColor.green, rgbColor.blue, rgbColor.alpha)

{-| 
  Convert a color into a hsl tuple
-}
toHslTuple : Color -> (Float, Float, Float)
toHslTuple color =
  let 
    hslColor = toHsl color
  in 
    (hslColor.hue, hslColor.saturation, hslColor.lightness)

{-| 
  Convert a color into a hsla tuple
-}
toHslaTuple : Color -> (Float, Float, Float, Float)
toHslaTuple color =
  let 
    hslColor = toHsl color
  in 
    (hslColor.hue, hslColor.saturation, hslColor.lightness, hslColor.alpha)

{-| 
  Convert from a rgb tuple into a color
-}
fromRgbTuple : (Int, Int, Int) -> Color
fromRgbTuple (r, g, b) = rgb r g b 

{-| 
  Convert from a rgba tuple into a color
-}
fromRgbaTuple : (Int, Int, Int, Float) -> Color
fromRgbaTuple (r, g, b, a) = rgba r g b a

{-| 
  Convert from a hsl tuple into a color
-}
fromHslTuple : (Float, Float, Float) -> Color
fromHslTuple (r, g, b) = hsl r g b 

{-| 
  Convert from a hsla tuple into a color
-}
fromHslaTuple : (Float, Float, Float, Float) -> Color
fromHslaTuple (r, g, b, a) = hsla r g b a