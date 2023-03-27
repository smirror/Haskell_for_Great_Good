-- Int is bounded Integer
-- Integer is unbounded Integer
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float is single precision
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double is double precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Bool is boolean
-- Char is Unicode character.
-- labeled characters to use single quotes (')
-- Tupple are Type, but this definition is infinity kinds of Type by numbers of items and each Type.
-- So theoretically, there exists Tupple Type of infinity kinds
-- (but practically, maximum number items is 62)
-- and emptiness Tupple () is one of Type.
main :: IO ()
main = do
  print (factorial 50)
  print (circumference 4.0)
  print (circumference' 4.0)
