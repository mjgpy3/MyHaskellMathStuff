module PalindromeTest (isPalindrome) where

isPalindrome :: String -> Bool

isPalindrome w
 | nChars <= 1           = nChars == 1
 | nChars == 2           = firstElem == lastElem
 | firstElem /= lastElem = False
 | firstElem == lastElem = isPalindrome (take (nChars - 2) (tail w))
 where firstElem = head w
       lastElem  = last w
       nChars    = length w
