module Test_DataLearning where

import Test.HUnit
import DataLearning

vlg = [VideoGame "Goldeneye 007" 9.6 1997,
       VideoGame "Bioshock Infinite" 9.8 2013,
       VideoGame "Sonic the Hedgehog 2" 9.0 1992,
       VideoGame "Star Wars: Knights of the Old Republic" 9.0 2003,
       VideoGame "Doom 3" 8.9 2004]

testBioshockInfiniteIsRankedBestGame =
  TestCase (assertEqual "Bioshock is listed as the best game" "Bioshock Infinite" (maybe "" title (bestGame vlg)))

tests = TestList [testBioshockInfiniteIsRankedBestGame]

main = runTestTT tests
