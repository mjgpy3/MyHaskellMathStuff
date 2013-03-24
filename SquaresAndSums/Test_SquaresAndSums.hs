module Test_SquaresAndSums where

import Test.HUnit
import SquaresAndSums

testSumOfSquaresOfOneIsOne =
  TestCase (assertEqual "Sum of squares of 1 is 1" 1 (sumOfSquares 1))

testSumOfSquaresOfThreeIsFourteen =
  TestCase (assertEqual "Sum of squares of 3 is 14" 14 (sumOfSquares 3))

testSquareOfSumsOfOneIsOne =
  TestCase (assertEqual "Square of sums of 1 is 1" 1 (squareOfSums 1))

testSquareOfSumsOfThreeIsThirtySix =
  TestCase (assertEqual "Square of sums of 3 is 36" 36 (squareOfSums 3))

tests = TestList [testSumOfSquaresOfOneIsOne,
                  testSumOfSquaresOfThreeIsFourteen,
                  testSquareOfSumsOfOneIsOne,
                  testSquareOfSumsOfThreeIsThirtySix]

main = runTestTT tests
