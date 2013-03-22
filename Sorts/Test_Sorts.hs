module Test_Sorts where

import Test.HUnit
import Sorts

listToTest = [-900, 33, 42, 35, 0, 1]

testQuickSortWorksForSimpleCase =
  TestCase (assertEqual "See if quicksort works for simple case" [-900, 0, 1, 33, 35, 42] (quickSort listToTest))

tests = TestList [testQuickSortWorksForSimpleCase]

main = runTestTT tests
