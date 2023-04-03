-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f . g = \x -> f (g x)

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

oddSquareSum :: Integer
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]

main :: IO ()
main = do
  print $ map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
  print $ map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
  print $ map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
  print $ map (negate . sum . tail) [[1..5],[3..6],[1..7]]

  print $ sum (replicate 5 (max 6.7 8.9))
  print $ (sum . replicate 5) (max 6.7 8.9)
  print $ sum . replicate 5 $ max 6.7 8.9

  print $ replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))
  print $ replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]
  print $ zipWith max [1,2] [4,5]
  print $ map (*3) $ zipWith max [1,2] [4,5]
  print $ product . map (*3) $ zipWith max [1,2] [4,5]
  print $ replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]

  print $ oddSquareSum
