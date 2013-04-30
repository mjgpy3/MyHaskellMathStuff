module Test_Fibs where

import Test.HUnit
import Fibs

testNthFibWorksForTheFirst10Fibs =
  TestCase (assertEqual "nthFib works for the first 10 fibs" [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] ([nthFib n | n <- [1..10]]))

testFibListWorksForAListOfSizeZero =
  TestCase (assertEqual "fibList 0 = []" [] (fibList 0))

testFibListWorksForAListOfSizeOne =
  TestCase (assertEqual "fibList 1 = [1]" [1] (fibList 1))

testFibListWorksForAListOfSizeTwo =
  TestCase (assertEqual "fibList 2 = [1,1]" [1,1] (fibList 2))

testFibListWorksForAListOfSizeNine =
  TestCase (assertEqual "fibList 9 = [1,1,2,3,5,8,13,21,34]" [1,1,2,3,5,8,13,21,34] (fibList 9))

tests = TestList [testNthFibWorksForTheFirst10Fibs,
                  testFibListWorksForAListOfSizeZero,
                  testFibListWorksForAListOfSizeOne,
                  testFibListWorksForAListOfSizeTwo,
                  testFibListWorksForAListOfSizeNine]

main = runTestTT tests
