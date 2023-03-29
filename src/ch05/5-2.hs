multThree :: Int -> Int -> Int -> Int
multThree x y z = x*y*z

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

main :: IO ()
main = do
    print $ applyTwice (+3) 10
    print $ applyTwice (++ " HAHA") "HEY"
    print $ applyTwice ("HAHA " ++) "HEY"
    print $ applyTwice (multThree 2 2) 9

    print $ zipWith' (+) [4,2,5,6] [2,6,2,3]
    print $ zipWith' max [6,3,2,1] [7,3,1,5]
    print $ zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
    print $ zipWith' (*) (replicate 5 2) [1..]
    print $ zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]] [[3,2,2],[2,2,3],[5,3,1]]

    print $ flip' zip [1,2,3,4,5] "hello"
    print $ zipWith (flip' div) [2,2..] [10,8,6,4,2]
    print $ zipWith (flip' div) [2,2..] [10,8,6,4,2,0]

