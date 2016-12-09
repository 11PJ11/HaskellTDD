module LeapYearSpec (spec) where

import           LeapYearKata    (isLeapYear)
import           Test.Hspec
import           Test.QuickCheck

multipleOf4 :: Gen Int
multipleOf4 = suchThat (\n -> n `mod` 4 == 0)

spec :: Spec
spec =
  describe "LeapYear" $ do
    it "returns false given year 1" $ do
      isLeapYear 1 `shouldBe` False
    it "returns true given year is multiple of 4" $ property $ do
      forAll multipleOf4 (\year -> isLeapYear year == True)
