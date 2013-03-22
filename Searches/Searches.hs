module Searches (binarySearch,
                 iterativeSearch,
                 fromTheSidesSearch) where

-- Public functions
binarySearch :: Ord a => [a] -> a -> Maybe Int
iterativeSearch :: Eq a => [a] -> a -> Maybe Int
fromTheSidesSearch :: Eq a => [a] -> a -> Maybe Int

-- Private functions
performBinarySearch :: Ord a => [a] -> a -> Int -> Int -> Maybe Int
performIterativeSearch :: Eq a => [a] -> a -> Int -> Maybe Int
performFromTheSidesSearch :: Eq a => [a] -> a -> Int -> Int -> Maybe Int

binarySearch l e = performBinarySearch l e 0 (length l)

performBinarySearch l e beg last
 | lookat == e = Just i
 | endCase     = Nothing
 | lookat < e  = performBinarySearch l e i last
 | lookat > e  = performBinarySearch l e beg i
 where i = quot (beg+last) 2
       lookat = l !! i
       endCase =  beg == last || beg == i || last == i

iterativeSearch xs val = performIterativeSearch xs val 0

performIterativeSearch [] _ _ = Nothing
performIterativeSearch (x:xs) val i
 | x == val  = Just i
 | otherwise = performIterativeSearch xs val (i+1)

fromTheSidesSearch l e = performFromTheSidesSearch l e 0 (length l)

performFromTheSidesSearch [] _ _ _ = Nothing

performFromTheSidesSearch l e i j
 | l !! i == e = i
 | l !! j == e = j
 | i >= j      = Nothing
 | otherwise   = performFromTheSidesSearch l e (i+1) (j-1)
