-- :t foldl

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

--map' :: (a -> b) -> [a] -> [b]
--map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

--elem' :: (Eq a) => a -> [a] -> Bool
--elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

and' :: [Bool] -> Bool
and' = foldr (&&) True

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

main :: IO ()
main = do
  print $ sum' [3,5,2,1]
  print $ and' [True, False, True]
  print $ and' (repeat False)

  print $ scanl (+) 0 [3,5,2,1]
  print $ scanr (+) 0 [3,5,2,1]
  print $ scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,1]
  print $ scanl (flip (:)) [] [3,2,1]

  print $ sqrtSums
  print $ sum (map sqrt [1..131])
  print $ sum (map sqrt [1..130])
