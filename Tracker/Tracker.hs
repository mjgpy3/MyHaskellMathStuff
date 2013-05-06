module Tracker where

data Container = ListOfLocations {listName :: String,
                  itemType :: String,
                  locations :: [Location]}

data Location = Location {locationName :: String,
                          items :: [Item]}

data Item = NumberedCollectable {collectableName :: String,
                         collectableNumber :: Integer} 
          | Collectable {collectableName :: String}
