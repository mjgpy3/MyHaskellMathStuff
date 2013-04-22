module Test_MatrixOps where

import Test.HUnit
import MatrixOps

testDeterminantWorksForASimpleOneByOne =
  TestCase (assertEqual "Determinant of [[42]] = 42" 42 (determinant [[42]]))

testDeterminantWorksForASimpleTwoByTwo =
  TestCase (assertEqual "Determinant of 2x2 works" 10 (determinant [[1, 2], [-3, 4]]))

testDeterminantworksForAnotherSimpleTwoByTwo =
  TestCase (assertEqual "Determant of another 2x2 works" (-2) (determinant [[1,7], [0, -2]]))

testGetRestWorksForAThreeByThreeForTheFirstSlot =
  TestCase (assertEqual "First slot can be removed by getRest" [[5, 6], [8,9]] (getRest 0 [[1,2,3],[4,5,6],[7,8,9]]))

testGetRestWorksForAThreeByThreeForTheSecondSlot =
  TestCase (assertEqual "Second slot can be removed by getRest" [[4,6], [7,9]] (getRest 1 [[1,2,3],[4,5,6],[7,8,9]]))

testGetRestWorksForAThreeByThreeForTheThirdSlot =
  TestCase (assertEqual "Third slot can be removed by getRest" [[4,5], [7,8]] (getRest 2 [[1,2,3],[4,5,6],[7,8,9]]))

tests = TestList [testDeterminantWorksForASimpleOneByOne,
                  testDeterminantWorksForASimpleTwoByTwo,
                  testDeterminantworksForAnotherSimpleTwoByTwo,
                  testGetRestWorksForAThreeByThreeForTheFirstSlot,
                  testGetRestWorksForAThreeByThreeForTheSecondSlot]

main = runTestTT tests
