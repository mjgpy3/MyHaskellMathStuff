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

testDeterminantWorksForTestThreeByThreeMatrix =
  TestCase (assertEqual "Determinant of a 3x3 works" (-37.0) (determinant [[1, 2, 3], [5, 1, -1], [2, 0, 3]]))

testTheDeterminantOfTheZeroMatrixIsZeroForThreeDimensions =
  TestCase (assertEqual "Determinant of 0 Matrix is 0" [0, 0, 0] [determinant [[0]], determinant [[0, 0], [0, 0]], determinant [[0,0,0],[0,0,0],[0,0,0]]])

testDeterminantWorksForTestFourByFourMatrix =
  TestCase (assertEqual "Determinant of a 4x4 works" (-10406.0) (determinant [[8, 1, -12, 1], [0, 51, 3, -5], [-4, 12, 3, 3], [2, 1, 1, 2]]))

tests = TestList [testDeterminantWorksForASimpleOneByOne,
                  testDeterminantWorksForASimpleTwoByTwo,
                  testDeterminantworksForAnotherSimpleTwoByTwo,
                  testGetRestWorksForAThreeByThreeForTheFirstSlot,
                  testGetRestWorksForAThreeByThreeForTheSecondSlot,
                  testDeterminantWorksForTestThreeByThreeMatrix,
                  testTheDeterminantOfTheZeroMatrixIsZeroForThreeDimensions,
                  testDeterminantWorksForTestFourByFourMatrix]

main = runTestTT tests
