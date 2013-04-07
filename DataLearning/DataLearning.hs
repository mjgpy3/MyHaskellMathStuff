module DataLearning (VideoGame(VideoGame),
                     title, rating, year,
                     bestGame,
                     sortByRating,
                     removeFromList) where

import Data.Maybe

-- Public types
bestGame :: [VideoGame] -> Maybe VideoGame
sortByRating :: [VideoGame] -> [VideoGame]
removeFromList :: (Eq a) => a -> [a] -> [a]

data VideoGame = VideoGame { title :: String,
                             rating :: Float,
                             year :: Int } deriving (Show, Eq)

-- Private
betterGame :: VideoGame -> VideoGame -> VideoGame

betterGame g1@(VideoGame _ r1 _) g2@(VideoGame _ r2 _)
 | r1 > r2   = g1
 | otherwise = g2

bestGame [] = Nothing
bestGame [g] = Just g
bestGame (g1:g2:gs) = bestGame ((betterGame g1 g2):gs)

sortByRating [] = []
sortByRating (g:gs) = sortByRating less ++ [g] ++ sortByRating greater
 where less = [e | e <- gs, rating e > rating g]
       greater = [e | e <- gs, rating e <= rating g]

--sortByRating  gs
-- | length gs <= 1  = gs
-- | otherwise       = currentBest:removeFromList currentBest gs
-- where currentBest = fromJust (bestGame gs)

removeFromList _ [] = []
removeFromList e (x:xs)
 | e == x    = xs
 | otherwise = x:removeFromList e xs
