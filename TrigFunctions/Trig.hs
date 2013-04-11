module Trig (sin') where

sin' :: (Num a, Fractional a) => a -> a
sinTerm :: (Num a, Fractional a) => a -> Integer -> a
factorial :: Integer -> Integer

sin' x = sum [sinTerm x i | i <- [1..33]]
sinTerm x i = (x^oddTerm / fromIntegral (factorial oddTerm))*(-1)^(i-1)
  where oddTerm = 2*i - 1

factorial 1 = 1
factorial n = n * factorial (n-1)

main = print (sin' (2*pi)) 
