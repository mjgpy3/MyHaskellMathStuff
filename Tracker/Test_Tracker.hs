module Test_Tracker where

import Tracker
import Test.HUnit

pikaCard = NumberedCollectable "Pikachu" 25
geodudeCard = NumberedCollectable "Geodude" 74
jigglyPuffCard = NumberedCollectable "Jigglypuff" 39
charizardCard = NumberedCollectable "Charizard" 6
guinnessCap = Collectable "Guinness"

cardBox = Location "Deck Box" [pikaCard, geodudeCard, jigglyPuffCard, charizardCard]
boxOfJunk = Location "Box of junk" [guinnessCap, pikaCard]

testItemNumbersAffirmThatTheLocationWasConstructedCorrectly =
  TestCase (assertEqual "Testing to see if the location works" [25, 74, 39, 6] [collectableNumber card | card <- (items cardBox)])

testPolymorphicItemsCanBothShareAList =
  TestCase (assertEqual "Testing whether polymorphic data can inhabit a list" ["Guinness", "Pikachu"] [collectableName thing | thing <- (items boxOfJunk)])

tests = TestList [testItemNumbersAffirmThatTheLocationWasConstructedCorrectly,
                  testPolymorphicItemsCanBothShareAList]

main = runTestTT tests
