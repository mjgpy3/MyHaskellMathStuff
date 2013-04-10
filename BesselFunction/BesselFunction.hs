module BesselFunction (factorial) where

--j0 :: (Num a) => a -> Int -> a
factorial :: Int -> Int

factorial 1 = 1
factorial n = n * (factorial (n-1))
