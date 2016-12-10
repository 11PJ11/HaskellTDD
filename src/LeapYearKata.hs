module LeapYearKata where

data Year a = Common a
            | Leap a
            deriving(Eq, Ord, Show)

defineYear :: Int -> Year Int
defineYear year
  | year `mod` 4 == 0 = Leap year
  | otherwise = Common year
