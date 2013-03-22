module Searches (binarySearch, iterativeSearch) where

-- Public functions
binarySearch :: Ord a => [a] -> a -> Maybe Int
iterativeSearch :: (Eq a) => [a] -> a -> Maybe Int

-- Private functions
performBinarySearch :: Ord a => [a] -> a -> Int -> Int -> Maybe Int
searchMeat :: (Eq a) => [a] -> a -> Int -> Maybe Int


binarySearch l e = performBinarySearch l e 0 (length l)

performBinarySearch l e beg last
 | lookat == e = Just i
 | endCase     = Nothing
 | lookat < e  = performBinarySearch l e i last
 | lookat > e  = performBinarySearch l e beg i
 where i = quot (beg+last) 2
       lookat = l !! i
       endCase =  beg == last || beg == i || last == i

iterativeSearch xs val = searchMeat xs val 0

searchMeat [] _ _ = Nothing
searchMeat (x:xs) val i
 | x == val  = Just i
 | otherwise = searchMeat xs val (i+1)
