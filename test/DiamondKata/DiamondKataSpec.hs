module DiamondKata.DiamondKataSpec (spec) where

import           DiamondKata
import           Test.Hspec
import           Test.QuickCheck

letters :: Gen Char
letters = elements ['A'..'Z']

spec :: Spec
spec =
  describe "diamond" $ do
    it "produces some lines" $ property $ do
      forAll letters (not . null . diamondLines)
    it "produces an odd number of lines" $ property $ do
      forAll letters (odd . length . diamondLines)
