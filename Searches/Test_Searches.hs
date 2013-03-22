module Test_Searches where

import Test.HUnit
import Searches

listToTest = [-12, 0, 611, 924, 1026, 9999, 10790]

testBinarySearchFindsNothingWhenNonExistant =
  TestCase (assertEqual "Shouldn't find anything"
  Nothing (binarySearch listToTest 1))

testBinarySearchFromEndToEnd =
  TestCase (assertEqual "Try to find the whole list one element at a time"
  [Just x | x <- [0..6]] [binarySearch listToTest x | x <- listToTest])


testIterativeSearchFindsNothingWhenNonExistant =
  TestCase (assertEqual "Shouldn't find anything"
  Nothing (iterativeSearch listToTest 1))

testIterativeSearchFromEndToEnd =
  TestCase (assertEqual "Try to find the whole list one element at a time"
  [Just x | x <- [0..6]] [iterativeSearch listToTest x | x <- listToTest])

tests = TestList [testBinarySearchFindsNothingWhenNonExistant,
                  testBinarySearchFromEndToEnd,
                  testIterativeSearchFindsNothingWhenNonExistant,
                  testIterativeSearchFromEndToEnd]

main = runTestTT tests
