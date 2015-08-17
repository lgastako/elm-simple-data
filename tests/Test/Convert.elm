module Test.Convert (tests) where

import Convert exposing (..)

import Result exposing (Result(..))

import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (..)

tests : Test 
tests = 
  suite "Default" 
    [ test "Successful convert" <| assertEqual 5 (default (\x -> Ok x) 4 5)
    , test "Unsuccesful convert" <| assertEqual 4 (default (\x -> Err "") 4 5)]
