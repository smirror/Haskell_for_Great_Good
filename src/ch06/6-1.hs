import Data.List (numb, sort)
-- import Data.List hiding (nub)
import qualified Data.Map as M

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

