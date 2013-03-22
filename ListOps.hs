module ListOps where

mean :: (Fractional a) => [a] -> Maybe a
max' :: (Ord a) => [a] -> a
min' :: (Ord a) => [a] -> a

-- If an empty is given return Nothing otherwise return the mean
mean [] = Nothing
mean xs = Just (sum xs) / fromIntegral (length xs)

max' (x:[]) = x
max' (x:y:xs)
 | x > y     = max' (x:xs)
 | otherwise = max' (y:xs)

min' (x:[]) = x
min' (x:y:xs)
 | x < y     = min' (x:xs)
 | otherwise = min' (y:xs)

