multThree :: Int -> Int -> Int -> Int
multThree x y z = x*y*z

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

main :: IO ()
main = do
  let multTwoWithNine = multThree 9
  multTwoWithNine 2 3

  diviByTen = divideByTen 200
  200 /10
  (/10) 200
