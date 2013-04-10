module Test_BesselFunction where

import Test.HUnit
import BesselFunction

testFactorialOf3Is6 =
  TestCase (assertEqual "3! = 6" 6 (factorial 3))

testFactorialOf1Is1 =
  TestCase (assertEqual "1! = 1" 1 (factorial 1))

testFactorialOf5Is120 =
  TestCase (assertEqual "5! = 120" 120 (factorial 5))

tests = TestList [testFactorialOf3Is6,
                  testFactorialOf1Is1,
                  testFactorialOf5Is120]

main = runTestTT tests
