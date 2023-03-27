bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal.\
                   \ Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise   = "You're a whale, congratulations!"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
  | weight / height ^ 2 <= 25.0 = "You're supposedly normal.\
                   \ Pffft, I bet you're ugly!"
  | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise   = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b = EQ
    | a <= b = LT
    | otherwise = GT

main :: IO ()
main = do
    print $ bmiTell 18.5
    print $ bmiTell 25.0
    print $ bmiTell 30.0
    print $ bmiTell 40.0

    print $ bmiTell' 50.0 1.8
    print $ bmiTell' 70.0 1.8
    print $ bmiTell' 90.0 1.8
    print $ bmiTell' 120.0 1.8

    print $ max' 1 2
    print $ max' 2 1

    print $ 1 `myCompare` 2
    print $ 2 `myCompare` 1