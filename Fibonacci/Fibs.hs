module Fibs (nthFib,
             fibList) where

nthFib :: (Integral a) => a -> a

nthFib 1 = 1
nthFib 2 = 1
nthFib n = nthFib (n-1) + nthFib (n-2) 

fibList :: (Integral a) => a -> [a]
fibList 0 =  []
fibList 1 = [1]
fibList n = constructFibList [1, 1] (n-2)

constructFibList :: (Integral a) => [a] -> a -> [a]
constructFibList xs 0 = xs
constructFibList xs n = constructFibList (xs ++ [next]) (n-1)
  where next = (last (init xs)) + (last xs)

main = print $ fibList 7
