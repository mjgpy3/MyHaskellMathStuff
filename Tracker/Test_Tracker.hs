module Test_Tracker where

import Tracker
import Test.HUnit

pikaCard = NumberedCollectable "Pikachu" 25
geodudeCard = NumberedCollectable "Geodude" 74
jigglyPuffCard = NumberedCollectable "Jigglypuff" 39
charizardCard = NumberedCollectable "Charizard" 6
guinessCap = Collectable "Guinness"

cardBox = Location "Deck Box" [pikaCard, geodudeCard, jigglyPuffCard, charizardCard]

testItemNumbersAffirmThatTheLocationWasConstructedCorrectly =
  TestCase (assertEqual "Testing to see if the location works" [25, 74, 39, 6] [collectableNumber card | card <- (items cardBox)])

tests = TestList [testItemNumbersAffirmThatTheLocationWasConstructedCorrectly]

main = runTestTT tests
