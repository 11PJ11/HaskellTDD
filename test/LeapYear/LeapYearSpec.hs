module LeapYear.LeapYearSpec (spec) where

import           LeapYearKata
import           Test.Hspec
import           Test.QuickCheck

oneBetweeen0And2100 :: Gen Int
oneBetweeen0And2100 = choose (0,2100)

isMultipleOf4 :: Int -> Bool
isMultipleOf4 n = n `mod` 4 == 0

theMultiplesOf4 :: Gen Int
theMultiplesOf4 = oneBetweeen0And2100 `suchThat` isMultipleOf4

spec :: Spec
spec =
  describe "defineYear" $ do
    it "returns Common 1 given year 1" $ do
      defineYear 1 `shouldBe` Common 1
    it "returns Leap year given year is multiple of 4" $ property $ do
      forAll theMultiplesOf4 (\year -> defineYear year == (Leap year))
