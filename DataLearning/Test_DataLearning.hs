module Test_DataLearning where

import Test.HUnit
import DataLearning
import Data.Maybe
import Data.List

extra_game = VideoGame "Fallout 3" 8.8 2008

g1 = VideoGame "Goldeneye 007" 9.6 1997
g2 = VideoGame "Bioshock Infinite" 9.8 2013
g3 = VideoGame "Sonic the Hedgehog 2" 9.0 1992
g4 = VideoGame "Star Wars: Knights of the Old Republic" 9.0 2003
g5 = VideoGame "Doom 3" 8.9 2004
g6 = VideoGame "Morrowind" 9.6 2003

vgl = [g1, g2, g3, g4, g5, g6]
vgl_sorted_by_rating = [g2, g1, g6, g3, g4, g5]

vgl_redundant_bests = [g1, g3, g4, g5, g6]

vgl_best_at_end = [g1, g3, g4, g5, g6, g2]
vgl2 = extra_game:vgl

list_of_ints = [1,2..20]
expected_list_of_ints = [1,2..20] \\ [3]

few_randoms = [3,3,5]
expected_randoms = [3, 5]

testBioshockInfiniteIsRankedBestGame =
  TestCase (assertEqual "Bioshock is listed as the best game" "Bioshock Infinite" ( title (fromJust (bestGame vgl))))

testBestGameWorksIfAtTheEnd =
  TestCase (assertEqual "The best game should be the game at the end" g2 (fromJust (bestGame vgl_best_at_end)))

testGamesAreEquatable =
  TestCase (assertEqual "A = A" True (vgl !! 0 == vgl !! 0))

testRemoveFromListRemovesFromListSuccessfully =
  TestCase (assertEqual "Remove 3 from list actually removes it" expected_list_of_ints (removeFromList 3 list_of_ints))

testRemoveFromListWorksForANonSetLikeCollection =
  TestCase (assertEqual "[3,3,5] - [3] -> [3,5]" expected_randoms (removeFromList 3 few_randoms))

testIfToldToRemoveSomethingNotInTheListThenReturnTheList = 
  TestCase (assertEqual "If not in list, return the whole thing" vgl (removeFromList extra_game vgl))

testRemovingSomethingFromTheEmptyListReturnsTheEmptyList =
  TestCase (assertEqual "Removing something from [] yields []" [] (removeFromList 2354 []))

testRemovingSomethingFromTheHighestIndexOfAListWorks =
  TestCase (assertEqual "Removing 20 from [1..20] yields [1..19]" [1, 2..19] (removeFromList 20 [1,2..20]))

testCanDeleteAVideoGameFromAListOfVideoGames =
  TestCase (assertEqual "Should be able to successfully delete a video game" vgl (removeFromList extra_game vgl2))

testSortByRatingWorksOnAListOfGames =
  TestCase (assertEqual "sortByRating should work on list of games" vgl_sorted_by_rating (sortByRating vgl))

testIfRedundantBestsSecondIsFound =
  TestCase (assertEqual "When we have redundant best games, the second is the one we care about" g6 (fromJust (bestGame vgl_redundant_bests)))

tests = TestList [testBioshockInfiniteIsRankedBestGame,
                  testBestGameWorksIfAtTheEnd,
                  testGamesAreEquatable,
                  testRemoveFromListRemovesFromListSuccessfully,
                  testRemoveFromListWorksForANonSetLikeCollection,
                  testIfToldToRemoveSomethingNotInTheListThenReturnTheList,
                  testRemovingSomethingFromTheEmptyListReturnsTheEmptyList,
                  testRemovingSomethingFromTheHighestIndexOfAListWorks,
                  testCanDeleteAVideoGameFromAListOfVideoGames,
                  testSortByRatingWorksOnAListOfGames,
                  testIfRedundantBestsSecondIsFound]

main = runTestTT tests
