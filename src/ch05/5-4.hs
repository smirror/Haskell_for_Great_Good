chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n*3 + 1)

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

addThree' :: Int -> Int -> Int -> Int
addThree' = \x -> \y -> \z -> x + y + z

flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

main :: IO ()
main = do
  print $ map (+3) [1,5,3,1,6]
  print $ map (++ "!") ["BIFF", "BANG", "POW"]

  print $ zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]
  print $ zipWith (\(a,b) (c,d) -> (a + c) / (b + d)) [(1,2),(3,5),(6,3),(2,6),(2,5)] [(1,2),(3,5),(6,3),(2,6),(2,5)]

  print $ zipWith (flip' (++)) ["love you", "love me"] ["i ", "you "]
  print $ map (flip' zip [1,2,3,4,5]) ["hello", "world"]

