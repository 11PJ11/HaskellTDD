module FizzBuzzSpec (spec) where

import           FizzBuzzKata    (fizzBuzz)
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec =
  describe "FizzBuzz" $ do
    it "returns Fizz given multiple of 3" $ do
      fizzBuzz 3 `shouldBe` "Fizz"
      fizzBuzz 6 `shouldBe` "Fizz"
      fizzBuzz 9 `shouldBe` "Fizz"
      fizzBuzz 12 `shouldBe` "Fizz"

    it "returns Buzz given multiple of 5" $ do
      fizzBuzz 5 `shouldBe` "Buzz"
      fizzBuzz 10 `shouldBe` "Buzz"
      fizzBuzz 20 `shouldBe` "Buzz"

    it "returns the number given not multiple of 5 or 3" $ do
      fizzBuzz 1 `shouldBe` "1"
      fizzBuzz 2 `shouldBe` "2"

    it "returns FizzBuzz given multiple of 3 and 5" $ do
      fizzBuzz 15 `shouldBe` "FizzBuzz"
      fizzBuzz 30 `shouldBe` "FizzBuzz"
