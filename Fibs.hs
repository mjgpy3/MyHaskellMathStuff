module Fibs where

nthFib :: (Integral a) => a -> a

nthFib 1 = 1
nthFib 2 = 1
nthFib n = nthFib (n-1) + nthFib (n-2) 

nFibs :: Integer -> [Integer]

nFibs 0 =  []
nFibs 1 = [1]
nFibs 2 = [1,1]
--nFibs n = []
