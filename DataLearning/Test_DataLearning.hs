module Test_DataLearning where

import Test.HUnit
import DataLearning
import Data.Maybe
import Data.List

extraGame = VideoGame "Fallout 3" 8.8 2008

g1 = VideoGame "Goldeneye 007" 9.6 1997
g2 = VideoGame "Bioshock Infinite" 9.8 2013
g3 = VideoGame "Sonic the Hedgehog 2" 9.0 1992
g4 = VideoGame "Star Wars: Knights of the Old Republic" 9.0 2003
g5 = VideoGame "Doom 3" 8.9 2004
g6 = VideoGame "Morrowind" 9.6 2003

vgl = [g1, g2, g3, g4, g5, g6]
vglSortedByRating = [g2, g1, g6, g3, g4, g5]
vglSortedByYear = [g2, g5, g4, g6, g1, g3]
vglSortedByTitle = [g2, g5, g1, g6, g3, g4]

vglRedundantBests = [g1, g3, g4, g5, g6]
vglBestAtEnd = [g1, g3, g4, g5, g6, g2]

testBioshockInfiniteIsRankedBestGame =
  TestCase (assertEqual "Bioshock is listed as the best game" "Bioshock Infinite" ( title (fromJust (bestGame vgl))))

testBestGameWorksIfAtTheEnd =
  TestCase (assertEqual "The best game should be the game at the end" g2 (fromJust (bestGame vglBestAtEnd)))

testGamesAreEquatable =
  TestCase (assertEqual "A = A" True (g1  == g1))

testGamesWithTheSameDataAreTheSame =
  TestCase (assertEqual "VideoGame a b c = VideoGame a b c" True (VideoGame "A" 1.0 2000 == VideoGame "A" 1.0 2000))

testGamesWithDifferentDataAreDifferent =
  TestCase (assertEqual "VideoGame a b c /= VideoGame d e f" True (VideoGame "A" 1.0 2000 /= VideoGame "B" 2.0 3000))

testSortByRatingWorksOnAListOfGames =
  TestCase (assertEqual "sortByRating should work on list of games" vglSortedByRating (sortByRating vgl))

testSortByYearWorksOnAListOfGames =
  TestCase (assertEqual "SortByYear should work on a list of games" vglSortedByYear (sortByYear vgl))

testSortByTitleWorksOnAListOfGames =
  TestCase (assertEqual "SortByTitle should work on a list of games" vglSortedByTitle (sortByTitle vgl))

testIfRedundantBestsSecondIsFound =
  TestCase (assertEqual "When we have redundant best games, the second is the one we care about" g6 (fromJust (bestGame vglRedundantBests)))

tests = TestList [testBioshockInfiniteIsRankedBestGame,
                  testBestGameWorksIfAtTheEnd,
                  testGamesAreEquatable,
                  testGamesWithTheSameDataAreTheSame,
                  testGamesWithDifferentDataAreDifferent,
                  testSortByRatingWorksOnAListOfGames,
                  testSortByYearWorksOnAListOfGames,
                  testSortByTitleWorksOnAListOfGames,
                  testIfRedundantBestsSecondIsFound]

main = runTestTT tests
