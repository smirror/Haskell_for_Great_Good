--($) :: (a -> b) -> a -> b
--f $ x = f x

main :: IO ()
main = do
  print $ sum $ map sqrt [1..130]
  print $ sum (filter (> 10) (map (*2) [2..10]))
  print $ sum $ filter (> 10) $ map (*2) [2..10]
  print $ map ($ 3) [(4+), (10*), (^2), sqrt]
