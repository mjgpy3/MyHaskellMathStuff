module PalindromeTest (isPalindrome) where

isPalindrome :: String -> Bool

isPalindrome s = s == reverse s
