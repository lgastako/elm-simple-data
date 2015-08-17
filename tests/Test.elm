import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import Test.Convert as Convert

tests : Test
tests =
    suite "elm-simple-data tests"
    [ 
        Convert.tests
    ]


main = runDisplay tests