module ListOps where

mean :: (Fractional a) => [a] -> Maybe a
mean [] = Nothing
mean xs = Just (sum xs) / (fromIntegral (length xs))

