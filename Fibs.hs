module Fibs where

nthFib :: (Integral a) => a -> a

nthFib 1 = 1
nthFib 2 = 1
nthFib n = nthFib (n-1) + nthFib (n-2) 
