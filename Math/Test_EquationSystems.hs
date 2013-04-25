module Test_EquationSystems where

import EquationSystems
import Test.HUnit

testSolvingASystemOfTwo =
  TestCase (assertEqual "Simple system of two" [1, 2] (solveEquations [[2, 2], [4, 0]] [6, 4])) 

testSolvingASystemOfThree =
  TestCase (assertEqual "Simple system of three" [-2, 1, 0] (solveEquations [[5, 2, 7], [-1, 5, 1], [-0.5, 9, 1/8]] [-8, 7, 10]))

tests = TestList [testSolvingASystemOfTwo,
                  testSolvingASystemOfThree]

main = runTestTT tests
