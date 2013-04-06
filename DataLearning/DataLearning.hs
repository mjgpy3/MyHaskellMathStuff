module DataLearning (VideoGame(VideoGame),
                     title, rating, year,
                     bestGame,
                     sortByRating,
                     removeFromList) where

import Data.Maybe

-- Public types
bestGame :: [VideoGame] -> Maybe VideoGame
sortByRating :: [VideoGame] -> [VideoGame]

data VideoGame = VideoGame { title :: String,
                             rating :: Float,
                             year :: Int } deriving (Show, Eq)

-- Private
removeFromList :: (Eq a) => a -> [a] -> [a]

bestGame [] = Nothing
bestGame [g@(VideoGame _ _ _)] = Just g
bestGame (g1@(VideoGame _ r1 _):g2@(VideoGame _ r2 _):gs)
 | r1 > r2   = bestGame (g1:gs)
 | otherwise = bestGame (g2:gs)

sortByRating [] = []
sortByRating [g] = [g]
sortByRating  gs = [fromJust (bestGame gs)]

removeFromList _ [] = []
removeFromList e (x:xs)
 | e == x    = xs
 | otherwise = x:removeFromList e xs
