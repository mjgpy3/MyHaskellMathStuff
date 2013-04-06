module Test_DataLearning where

import Test.HUnit
import DataLearning
import Data.Maybe
import Data.List

extra_game = VideoGame "Fallout 3" 8.8 2008

vgl = [VideoGame "Goldeneye 007" 9.6 1997,
       VideoGame "Bioshock Infinite" 9.8 2013,
       VideoGame "Sonic the Hedgehog 2" 9.0 1992,
       VideoGame "Star Wars: Knights of the Old Republic" 9.0 2003,
       VideoGame "Doom 3" 8.9 2004,
       VideoGame "Morrowind" 9.6 2003]

list_of_ints = [1,2..20]
expected_list_of_ints = [1,2..20] \\ [3]

few_randoms = [3,3,5]
expected_randoms = [3, 5]

testBioshockInfiniteIsRankedBestGame =
  TestCase (assertEqual "Bioshock is listed as the best game" "Bioshock Infinite" ( title (fromJust (bestGame vgl))))

testGamesAreEquatable =
  TestCase (assertEqual "A = A" True (vgl !! 0 == vgl !! 0))

testRemoveFromListRemovesFromListSuccessfully =
  TestCase (assertEqual "Remove 3 from list actually removes it" expected_list_of_ints (removeFromList 3 list_of_ints))

testRemoveFromListWorksForANonSetLikeCollection =
  TestCase (assertEqual "[3,3,5] - [3] -> [3,5]" expected_randoms (removeFromList 3 few_randoms))

testIfToldToRemoveSomethingNotInTheListThenReturnTheList = 
  TestCase (assertEqual "If not in list, return the whole thing" vgl (removeFromList extra_game vgl))

tests = TestList [testBioshockInfiniteIsRankedBestGame,
                  testGamesAreEquatable,
                  testRemoveFromListRemovesFromListSuccessfully,
                  testRemoveFromListWorksForANonSetLikeCollection,
                  testIfToldToRemoveSomethingNotInTheListThenReturnTheList]

main = runTestTT tests
