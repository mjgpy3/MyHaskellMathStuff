module Test_EquationSystems where

import EquationSystems
import Test.HUnit

allAreWithinDelta _ [] [] = True
allAreWithinDelta delta (v:vs) (e:es)
  | not (abs (e - v) < delta) = False
  | otherwise = allAreWithinDelta delta vs es

testSolvingASystemOfTwo =
  TestCase (assertEqual "Simple system of two" [1, 2] (solveEquations [[2, 2], [4, 0]] [6, 4])) 

testSolvingASystemOfThree =
  TestCase (assertEqual "Simple system of three" [-2, 1, 0] (solveEquations [[5, 2, 7], [-1, 5, 1], [-0.5, 9, 1/8]] [-8, 7, 10]))

testSolvingASystemOfFour =
  TestCase (assertEqual "Simple system of four" True (allAreWithinDelta 5e-12 [-0.521, 3.141593, 78.2,-0.27] (solveEquations [[0.72, -0.992, 7, 3.58], [911, 53.12, -81, 12.73], [0, 12.7, 0.001, -62], [0, -90.12, 0.00231, 0]] [542.941819744, -6645.38667984, 56.7164311, -282.93971916000004] )))

tests = TestList [testSolvingASystemOfTwo,
                  testSolvingASystemOfThree,
                  testSolvingASystemOfFour]

main = runTestTT tests
