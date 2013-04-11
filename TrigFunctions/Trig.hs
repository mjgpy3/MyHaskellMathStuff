module Trig (sin') where

sin' :: (Num a, Fractional a) => a -> a
factorial :: Integer -> Integer

sin' x = sum [(x^(2*i - 1) / (fromIntegral (factorial (2*i - 1))))*(-1.0)^(i-1) | i <- [1..33]]

factorial 1 = 1
factorial n = n * factorial (n-1)

main = print (sin' (2*pi)) 
