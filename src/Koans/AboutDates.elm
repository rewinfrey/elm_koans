module AboutDates where

import Date
import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (suite, test)
import TestHelpers exposing (..)


-- dates can be created from a Time
ourDate =
  Date.fromTime 0


-- parsing a date could fail, and so returns a Result
parsedDate =
  Date.fromString "1/1/2000 11:30:45 AM"


getField : (Date.Date -> a) -> Result String Date.Date -> String
getField fn date =
  case date of
    Ok value ->
      toString (fn value)
    Err msg ->
      msg


testSuite =
  suite
    "About Dates"
    [ test "year gets the year"
        (assertEqual 1969 (Date.year ourDate))
    , test "month gets the month"
        (assertEqual Date.Dec (Date.month ourDate)) -- a type!
    , test "day gets the day"
        (assertEqual 31 (Date.day ourDate))
    , test "dayOfWeek gets the day of the week"
        (assertEqual Date.Wed (Date.dayOfWeek ourDate)) -- another type
    , test "hour gets the hour"
        (assertEqual "11" (getField Date.hour parsedDate))
    , test "minute gets the minute"
        (assertEqual "30" (getField Date.minute parsedDate))
    , test "second gets the second"
        (assertEqual "45" (getField Date.second parsedDate))
    ]
