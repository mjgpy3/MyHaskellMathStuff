module EquationSystems where

import MatrixOps

solveTwoEquations :: (Num a, Fractional a) => [[a]] -> [a] -> [a]

-- Delete me after fixing the test
solveTwoEquations a b = solveEquations a b 

solveEquations :: (Num a, Fractional a) => [[a]] -> [a] -> [a]

-- Solved equations of the form AX = B
--  where the A is the coefficient matrix,
--        X is [x, y, z, ...]
--        B is the constants matrix
solveEquations a b = [ determinant (replaceCols i a b) / det | i <- [0..(length a)-1] ]
 where det = determinant a


replaceCols :: (Num a, Fractional a) => Int -> [[a]] -> [a] -> [[a]]

replaceCols _ [] [] = []
replaceCols i (a:as) (b:bs) = (left ++ [b] ++  (tail right)) : replaceCols i as bs
 where (left, right) = splitAt i a

