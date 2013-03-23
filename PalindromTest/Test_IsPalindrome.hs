module Test_PalindromeTest where

import Test.HUnit
import PalindromeTest

testSingleLetterIsPalindrome =
  TestCase (assertEqual "A single letter is a palindrome" True (isPalindrome "M"))

testTwoOfTheSameLettersIsAPalindrome =
  TestCase (assertEqual "Two of the same letters is a palindrome" True (isPalindrome "MM"))

testRandomStringOfLettersThatIsNotAPalindromeIsNotAPalindrome =
  TestCase (assertEqual "Chuck Norris is not a palindrome" False (isPalindrome "Chuck Norris"))

testLowerRacecarIsAPalindrome =
  TestCase (assertEqual "'racecar' is a palindrome" True (isPalindrome "racecar"))

test9988008899IsAPalindrome =
  TestCase (assertEqual "9988008899 is a palindrome" True (isPalindrome (show 9988008899)))

test12345IsNotAPalindrome =
  TestCase (assertEqual "12345 is not a palindrome" False (isPalindrome (show 12345)))

tests = TestList [testSingleLetterIsPalindrome,
                  testTwoOfTheSameLettersIsAPalindrome,
                  testRandomStringOfLettersThatIsNotAPalindromeIsNotAPalindrome,
                  testLowerRacecarIsAPalindrome,
                  test9988008899IsAPalindrome,
                  test12345IsNotAPalindrome]

main = runTestTT tests
