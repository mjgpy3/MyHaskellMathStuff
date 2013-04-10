module Test_BesselFunction where

import Test.HUnit
import BesselFunction

epsilon = 0.005

-- Find whether something fits in epsilon, v is value, e is expected
withinEpsilon e v = e+epsilon >= v && e-epsilon <= v

testFactorialOf3Is6 =
  TestCase (assertEqual "3! = 6" 6 (factorial 3))

testFactorialOf1Is1 =
  TestCase (assertEqual "1! = 1" 1 (factorial 1))

testFactorialOf5Is120 =
  TestCase (assertEqual "5! = 120" 120 (factorial 5))

testJ0Of0Is1 =
  TestCase (assertEqual "J_0(0) = 1" 1 (j0 0.0 33))

testJ0OfAQuarterIsPointNineEight =
  TestCase (assertEqual "J_0(0.25) = 0.98" True (withinEpsilon 0.98 (j0 0.25 33)))

testJ0Of1IsNegativePointSeventySeven =
  TestCase (assertEqual "J_0(1) = 0.77" True (withinEpsilon 0.77 (j0 1.0 33)))

tests = TestList [testFactorialOf3Is6,
                  testFactorialOf1Is1,
                  testFactorialOf5Is120,
                  testJ0Of0Is1,
                  testJ0OfAQuarterIsPointNineEight,
                  testJ0Of1IsNegativePointSeventySeven]

main = runTestTT tests
