module EquationSystems (solveEquations) where

import MatrixOps

-- Solves equations of the form AX = B
solveEquations :: (Num a, Fractional a) => [[a]] -> [a] -> [a]
solveEquations a b = [ determinant (replaceCols i a b) / det | i <- [0..(length a)-1] ]
 where det = determinant a

replaceCols :: (Num a, Fractional a) => Int -> [[a]] -> [a] -> [[a]]
replaceCols _ [] [] = []
replaceCols i (a:as) (b:bs) = (left ++ b:(tail right)) : replaceCols i as bs
 where (left, right) = splitAt i a
