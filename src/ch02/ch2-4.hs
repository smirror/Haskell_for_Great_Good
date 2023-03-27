-- Eq Type Class
-- == :: Eq a => a -> a -> Bool
-- /= :: Eq a => a -> a -> Bool
:t (==)
:t (/=)
5 == 5
5 /= 5
'a' == 'a'
"HAHA" == "HAHA"
[1,2,3] == [1,2,3]

-- Ord Type Class
-- > :: Ord a => a -> a -> Bool
:t (>)
"Abrakadabra" < "Zebra"
"Abrakadabra" `compare` "Zebra"
5 >= 2
5 `compare` 3
'b' > 'a'

-- Show Type Class
-- show :: Show a => a -> String
:t (show)
show 3
show 5.334
show True

-- Read Type Class
read :: Read a => String -> a
read "True" || False
read "8.2" + 3.8
read "5" - 2
read "[1,2,3,4]" ++ [3]

read "5" :: Int
read "5" :: Float
(read "5" :: Float) * 4
read "[1,2,3,4]" :: [Int]
read "(3, 'a')" :: (Int, Char)

-- Enumerations Type Class
['a'..'e']
[LT .. GT]
[3 .. 5]
succ 'B'

-- Bounded Type Class
minBound :: Int
maxBound :: Char
maxBound :: Bool
minBound :: Bool
maxBound :: (Bool, Int, Char)

-- Num Type Class
-- :t 20
-- 20 :: (Num t) => t
-- :t (*)
-- (*) :: (Num a) => a -> a -> a

fromIntegral (length [1,2,3,4]) + 3.2