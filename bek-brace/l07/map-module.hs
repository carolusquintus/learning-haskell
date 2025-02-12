-- MAP

import Data.Map (Map)
import qualified Data.Map as Map

-- Define a function that takes a
-- integer and return a Map
myMap :: Int -> Map Int [Int]
myMap n = Map.fromList(map makePair [1..n])
    where
        makePair x = (x, [x])

main :: IO()
main = print(myMap 4)

