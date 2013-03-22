module Test_PrimeFactor where

import Test.HUnit
import PrimeFactors

testFiveIsPrime =
 TestCase (assertEqual "5 should be prime" True (isPrime 5))

testTwoIsPrime =
 TestCase (assertEqual "2 should be prime" True (isPrime 2))

testThreeIsPrime =
 TestCase (assertEqual "3 should be prime" True (isPrime 3))

testFourIsNotPrime =
 TestCase (assertEqual "4 should not be prime" False (isPrime 4))

testFifteenIsNotPrime =
 TestCase (assertEqual "15 should not be prime" False (isPrime 15))

testSixIsNotPrime =
 TestCase (assertEqual "6 should not be prime" False (isPrime 6))

testTwentyNineIsNotPrime =
 TestCase (assertEqual "29 should be prime" True (isPrime 29))


testTwoIsTheOnlyPrimeFactorOfTwo = 
 TestCase (assertEqual "2 -> [2]" [2] (getPrimeFactors 2))

testThreeIsTheOnlyPrimeFactorOfThree =
 TestCase (assertEqual "3 -> [3]" [3] (getPrimeFactors 3))

testTwoAndTwoAreThePrimeFactorsOfFour =
 TestCase (assertEqual "4 -> [2,2]" [2,2] (getPrimeFactors 4))

testTwoAndThreeAreThePrimeFactorsOfSix =
 TestCase (assertEqual "6 -> [2,3]" [2,3] (getPrimeFactors 6))

testThreeAndThreeAreThePrimeFactorsOfNine =
 TestCase (assertEqual "9 -> [3,3]" [3,3] (getPrimeFactors 9))

testTwoTwoAndThreeAreThePrimeFactorsOfTwelve =
 TestCase (assertEqual "12 -> [2,2,3]" [2,2,3] (getPrimeFactors 12))

testThreeAndFiveAreThePrimeFactorsOfFifteen =
 TestCase (assertEqual "15 -> [3,5]" [3,5] (getPrimeFactors 15))

tests = TestList [testFiveIsPrime,
                  testTwoIsPrime,
                  testThreeIsPrime,
                  testFourIsNotPrime,
                  testFifteenIsNotPrime,
                  testSixIsNotPrime,
                  testTwentyNineIsNotPrime,
                  testTwoIsTheOnlyPrimeFactorOfTwo, 
                  testThreeIsTheOnlyPrimeFactorOfThree,
                  testTwoAndTwoAreThePrimeFactorsOfFour,
                  testTwoAndThreeAreThePrimeFactorsOfSix,
                  testThreeAndThreeAreThePrimeFactorsOfNine,
                  testTwoTwoAndThreeAreThePrimeFactorsOfTwelve,
                  testThreeAndFiveAreThePrimeFactorsOfFifteen]

main = runTestTT tests
