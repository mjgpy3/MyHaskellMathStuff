module Test_Trig where

import Test.HUnit
import Trig

epsilon = 0.00000001

withinEpsilon e v = abs (v - e) < epsilon

testSinOf0Is0 =
  TestCase (assertEqual "sin(0) = 0" 0 (sin' 0))

testSinOf2piIs0 =
  TestCase (assertEqual "sin(2*pi) = 0" True (withinEpsilon (0.0) (sin' (2.0*pi))))

testSin5piSeventhsWorks =
  TestCase (assertEqual "sin(5pi/7) = 0.78183148246" True (withinEpsilon 0.78183148246 (sin' (5.0*pi / 7.0))))

tests = TestList [testSinOf0Is0,
                  testSinOf2piIs0,
                  testSin5piSeventhsWorks]

main = runTestTT tests
