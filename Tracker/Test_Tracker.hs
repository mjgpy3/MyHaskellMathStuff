module Test_Tracker where

import Tracker
import Test.HUnit

pikaCard = NumberedCollectable "Pikachu" 25
geodudeCard = NumberedCollectable "Geodude" 74
jigglyPuffCard = NumberedCollectable "Jigglypuff" 39
charizardCard = NumberedCollectable "Charizard" 6
money = Collectable "safsa"

main = print (collectableName money)
