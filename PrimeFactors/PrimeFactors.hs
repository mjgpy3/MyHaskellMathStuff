module PrimeFactors (isPrime,
                     getPrimeFactors,
                     nthPrime) where

-- Public
isPrime :: Integer -> Bool
getPrimeFactors :: Integer -> [Integer]
nthPrime :: Integer -> Integer

-- Private
lookForPrimeFrom :: Integer -> Integer -> Bool
isPrimeFactor :: Integer -> Integer -> Bool
lookForPrimeFactorsFrom :: Integer -> Integer -> [Integer]
nthPrimeFrom :: Integer -> Integer -> Integer -> Integer

isPrime n
 | n <= 2    = n == 2
 | even n    = False
 | n == 3    = True
 | otherwise = lookForPrimeFrom n 3

lookForPrimeFrom n i
 | ceiling (sqrt (fromIntegral n))+1 < i  = True
 | (n `mod` i) == 0                       = False
 | otherwise                              = lookForPrimeFrom n (i+2)

getPrimeFactors n = lookForPrimeFactorsFrom n 2
 
lookForPrimeFactorsFrom n i
 | n <= 1         = []
 | n `mod` i == 0 = i:lookForPrimeFactorsFrom (n `quot` i) i 
 | otherwise      = lookForPrimeFactorsFrom n (i+1)

isPrimeFactor x y = y `mod` x == 0 && isPrime x

nthPrime 1 = 2
nthPrime n = nthPrimeFrom n 2 3

nthPrimeFrom n i c
 | not (isPrime c) = nthPrimeFrom n i (c+2)
 | i == n          = c
 | otherwise       = nthPrimeFrom n (i+1) (c+2)
