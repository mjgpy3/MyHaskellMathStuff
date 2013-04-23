module MatrixOps where

determinant :: (Num a, Fractional a) => [[a]] -> a

determinant [[x]] = x
determinant [[w,x], [y,z]] = w*z - x*y
determinant mat = sum [s*x*(determinant (getRest i mat)) | i <- [0..(n-1)],
                                                           let x = (head mat) !! i
                                                               s = (-1)^i]
 where n = length $ head mat

getRest :: (Num a, Fractional a) => Int -> [[a]] -> [[a]]

getRest i mat = removeCols i (tail mat)

removeCols :: (Num a, Fractional a) => Int -> [[a]] -> [[a]]

removeCols _ [] = []
removeCols i (row:rows) = [x | j <- [0..(n-1)], j /= i, let x = row !! j] : (removeCols i rows)
 where n = length row
