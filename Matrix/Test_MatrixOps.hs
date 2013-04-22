module Test_MatrixOps where

import Test.HUnit
import MatrixOps

testDeterminantWorksForASimpleOneByOne =
  TestCase (assertEqual "Determinant of [[42]] = 42" 42 (determinant [[42]]))

testDeterminantWorksForASimpleTwoByTwo =
  TestCase (assertEqual "Determinant of 2x2 works" 10 (determinant [[1, 2], [-3, 4]]))

testDeterminantworksForAnotherSimpleTwoByTwo =
  TestCase (assertEqual "Determant of another 2x2 works" (-2) (determinant [[1,7], [0, -2]]))

tests = TestList [testDeterminantWorksForASimpleOneByOne,
                  testDeterminantWorksForASimpleTwoByTwo,
                  testDeterminantworksForAnotherSimpleTwoByTwo]

main = runTestTT tests
