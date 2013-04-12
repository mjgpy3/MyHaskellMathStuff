module BesselFunction (factorial,
                       j0) where

-- TODO: refactor so that factorial actually works and isn't dumb

j0 :: (Num a, Fractional a) => a -> Int -> a
factorial :: Int -> Int
f :: (Num a, Fractional a) => a -> Int -> a

f x k = (((-1)^k)/( fromIntegral (factorial k)^2))*((x/2.0)^(2*k))

j0 x n
 | n > 33 = error "Cannot generate more than 33 terms"
 | otherwise = 1 + sum [f x k | k <- [1..n]]

factorial 1 = 1
factorial n = n * factorial (n-1)

main = print (sum [f 0.0 i | i <- [1..33]])
