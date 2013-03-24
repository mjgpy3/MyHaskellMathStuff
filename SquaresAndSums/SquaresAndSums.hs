module SquaresAndSums where

squareOfSums :: Integer -> Integer
sumOfSquares :: Integer -> Integer

squareOfSums n = ((n*(n+1)) `quot` 2)^2
sumOfSquares n = ((n*(n+1)*(2*n+1)) `quot` 6)
