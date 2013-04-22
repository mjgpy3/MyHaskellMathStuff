module MatrixOps where

determinant :: (Num a, Fractional a) => [[a]] -> a

determinant [[x]] = x
determinant [[w,x], [y,z]] = w*z - x*y
