module DiamondKataSpec (spec) where

import           DiamondKata
import           Test.Hspec
import           Test.QuickCheck

letters :: Gen Char
letters = elements ['A'..'Z']

spec :: Spec
spec =
  describe "diamond" $ do
    it "produces some lines" $ property $ do
      forAll letters
        (\letter -> not  $ null $ diamondLines letter)
