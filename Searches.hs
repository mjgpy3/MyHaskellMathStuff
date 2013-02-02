module Searches where

binarySearch :: Ord a => [a] -> a -> Int -> Int -> Maybe Int

binarySearch l e beg last
 | lookat == e = Just i
 | i == (length l)-1 || i == 0 = Nothing
 | lookat < e = (binarySearch l e i last)
 | lookat > e = (binarySearch l e beg i)
 where i = quot (beg+last) 2
       lookat = l !! i

-- Used to call the other guy with a 0
iterativeSearch :: (Eq a) => [a] -> a -> Maybe Int

iterativeSearch [] _ = Nothing
iterativeSearch xs val = searchMeat xs val 0

-- Does the search by cutting off the list. Returns
-- Nothing if it is not found
searchMeat :: (Eq a) => [a] -> a -> Int -> Maybe Int

searchMeat (x:xs) val i
 | x == val  = Just i
 | otherwise = searchMeat xs val (i+1)
searchMeat [] _ _ = Nothing

