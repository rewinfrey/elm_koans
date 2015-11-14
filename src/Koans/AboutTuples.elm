module AboutTuples where

import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (suite, test)
import TestHelpers exposing (..)


testSuite =
  suite
    "About Tuples"
    [ test "tuples are like lists of fixed length"
        (assertEqual (1, 2) (1, 2))
    , test "tuples may also be of mixed types"
        (assertEqual (1, "hey") (1, "hey"))
    , test "there is a special comma syntax for creating tuples"
        (assertEqual (1, "hey") ((,) 1 "hey"))
    , test "you use as many commas as there would be in the tuple"
        (assertEqual (1, "hey", []) ((,,) 1 "hey" []))
    , test "fst gets the first element of a 2-tuple"
        (assertEqual 100 (fst ((,) 100 1000)))
    , test "snd gets the second element of a 2-tuple"
        (assertEqual "thar" (snd ((,) "hello" "thar")))
    , test "case statements may be used to destructure a tuple"
        (case (1, 2) of
          (first, second) ->
            (assert ((first == 1) && (second == 2))))
    , test "tuples may also be destructured by function arguments"
        (assert ((\(f, s) -> ((f == 1) && (s == 2))) (1, 2)))
    ]
