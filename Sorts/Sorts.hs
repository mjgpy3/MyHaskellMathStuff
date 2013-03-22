module Sorts (quickSort) where

quickSort :: Ord a => [a] -> [a]

quickSort [] = []
quickSort (x:xs) = quickSort less ++ [x] ++ quickSort greater
 where less = [e | e <- xs, e < x]
       greater = [e | e <- xs, e >= x]
