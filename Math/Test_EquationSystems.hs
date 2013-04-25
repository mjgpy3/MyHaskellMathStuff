module Test_EquationSystems where

import EquationSystems
import Test.HUnit

testSolveTwoEquationsWorksForASimpleSystem =
  TestCase (assertEqual "Simple system of two" [1, 2] (solveTwoEquations [[2, 2], [4, 0]] [6, 4]))

tests = TestList [testSolveTwoEquationsWorksForASimpleSystem]

main = runTestTT tests
