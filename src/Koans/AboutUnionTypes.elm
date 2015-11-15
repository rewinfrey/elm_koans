module AboutUnionTypes where

import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (suite, test)
import TestHelpers exposing (..)


type Nucleotide
  = A
  | C
  | G
  | T


xNucleotide = G


type DNA
  = Base Nucleotide
  | Strand (List Nucleotide)


testSuite =
  suite
    "About UnionTypes"
    [ test "simple types are similar to enums in other languages"
        (assertEqual C C)
    , test "more complex types can be built with a 'tag' and additional data"
        (assertEqual (Base C) (Base C))
    , test "all types in the union type are the same type"
        (assertEqual (Base A) (Base A))
    , test "case statements may be used to extract the data from the type"
        (case Base A of
          Strand nucleotides ->
            (assertEqual [xNucleotide] nucleotides)
          Base nucleotide ->
            (assertEqual A nucleotide))
    ]
