module Searches (binarySearch, iterativeSearch) where

binarySearch :: Ord a => [a] -> a -> Maybe Int
performBinarySearch :: Ord a => [a] -> a -> Int -> Int -> Maybe Int

binarySearch l e = performBinarySearch l e 0 (length l)

performBinarySearch l e beg last
 | lookat == e = Just i
 | endCase     = Nothing
 | lookat < e  = (performBinarySearch l e i last)
 | lookat > e  = (performBinarySearch l e beg i)
 where i = quot (beg+last) 2
       lookat = l !! i
       endCase =  beg == last || beg == i || last == i

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

