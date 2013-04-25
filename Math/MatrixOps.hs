module MatrixOps where

import Data.List

determinant :: (Num a, Fractional a) => [[a]] -> a
determinant [[x]] = x
determinant mat =
 sum [(-1)^i*x*(determinant (getRest i mat)) | (i, x) <- zip [0..] (head mat)]

getRest :: (Num a, Fractional a) => Int -> [[a]] -> [[a]]
getRest i mat = removeCols i (tail mat)

removeCols :: (Num a, Fractional a) => Int -> [[a]] -> [[a]]
removeCols _ [] = []
removeCols i (r:rs) = (left ++ (tail right)) : removeCols i rs
 where (left, right) = splitAt i r
