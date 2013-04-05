module DataLearning where

bestGame :: [VideoGame] -> Maybe VideoGame

data VideoGame = VideoGame { title :: String,
                             rating :: Float,
                             year :: Int } deriving (Show)

bestGame [] = Nothing
bestGame [g@(VideoGame _ _ _)] = Just g
bestGame (g1@(VideoGame _ r1 _):g2@(VideoGame _ r2 _):gs)
 | r1 > r2   = bestGame (g1:gs)
 | otherwise = bestGame (g2:gs)
