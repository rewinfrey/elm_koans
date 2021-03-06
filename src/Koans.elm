import AboutAsserts
import AboutComparisonOperators
import AboutDates
import AboutFunctions
import AboutLists
import AboutLiterals
import AboutLogicalOperators
import AboutMathematicalOperators
import AboutMaybe
import AboutNumberConversions
import AboutRecords
import AboutRegexes
import AboutResults
import AboutSets
import AboutStrings
import AboutTime
import AboutTuples
import AboutUnionTypes
import ElmTest.Runner.Element exposing (..)
import ElmTest.Test as Test


main =
  runDisplay
    <| Test.suite
         "The Elm Koans"
         [ AboutAsserts.testSuite
         , AboutLiterals.testSuite
         , AboutComparisonOperators.testSuite
         , AboutLogicalOperators.testSuite
         , AboutMathematicalOperators.testSuite
         , AboutNumberConversions.testSuite
         , AboutFunctions.testSuite
         , AboutLists.testSuite
         , AboutTuples.testSuite
         , AboutMaybe.testSuite
         , AboutResults.testSuite
         , AboutStrings.testSuite
         , AboutRegexes.testSuite
         , AboutTime.testSuite
         , AboutDates.testSuite
         , AboutSets.testSuite
         , AboutRecords.testSuite
         , AboutUnionTypes.testSuite
         ]
