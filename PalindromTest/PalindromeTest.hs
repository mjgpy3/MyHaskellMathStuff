module PalindromeTest (isPalindrome) where

isPalindrome :: [Char] -> Bool

isPalindrome w
 | length w == 1         = True
 | length w == 2         = w !! 0 == w !! 1
 | firstElem /= lastElem = False
 | firstElem == lastElem = isPalindrome (take ((length w) - 2) (tail w))
 where firstElem = head w
       lastElem  = last w
