module LeapYearKata ( isLeapYear ) where

isLeapYear :: Int -> Bool
isLeapYear year
  | year `mod` 4 == 0  = True
  | otherwise = False
