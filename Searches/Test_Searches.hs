module Test_Searches where

import Test.HUnit
import Searches

listToTest = [-12, 0, 611, 924, 1026, 9999, 10790]

test_binary_search_finds_nothing_when_non_existant =
  TestCase (assertEqual "Shouldn't find anything"
  Nothing (binarySearch listToTest 1))

test_binary_search_from_end_to_end =
  TestCase (assertEqual "Try to find the whole list one element at a time"
  [Just x | x <- [0..6]] ([binarySearch listToTest x | x <- listToTest]))


test_iterative_search_finds_nothing_when_non_existant =
  TestCase (assertEqual "Shouldn't find anything"
  Nothing (iterativeSearch listToTest 1))

test_iterative_search_from_end_to_end =
  TestCase (assertEqual "Try to find the whole list one element at a time"
  [Just x | x <- [0..6]] ([iterativeSearch listToTest x | x <- listToTest]))

tests = TestList [test_binary_search_finds_nothing_when_non_existant,
                  test_binary_search_from_end_to_end,
                  test_iterative_search_finds_nothing_when_non_existant,
                  test_iterative_search_from_end_to_end]

main = runTestTT tests
