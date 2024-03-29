doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
doubleSmallNumber x = if x > 100
                        then x
                        else x*2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"

-- 1.3
-- Lists
let lostNumbers = [4,8,15,16,23,42]

-- concatenation
[1,2,3,4] ++ [9,10,11,12]
"hello" ++ " " ++ "world"
['w','o'] ++ ['o','t']

-- cons operator
'A':" SMALL CAT"
5:[1,2,3,4,5]
1:2:3:4:[]
1:2:3:4:[] == [1,2,3,4]

-- accessing list elements
"Steve Buscemi" !! 6
[9.4,33.2,96.2,11.2,23.25] !! 1

-- list in list
let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
b ++ [[1,1,1,1]]
[6,6,6]:b
b !! 2

-- lists are compared in lexicographical order
[3,2,1] > [2,1,0]
[3,2,1] > [2,10,100]
[3,4,2] > [3,4]
[3,4,2] == [3,4,2]

-- head, tail, last, init, length, null, reverse, take, drop, maximum, minimum, sum, product, elem
head [5,4,3,2,1] -- 5
tail [5,4,3,2,1] -- [4,3,2,1]
last [5,4,3,2,1] -- 1
init [5,4,3,2,1] -- [5,4,3,2]
-- head []
-- Exception: Prelude.head: empty list
length [5,4,3,2,1] -- 5
null [1,2,3] -- False
null [] -- True
reverse [5,4,3,2,1] -- [1,2,3,4,5]
take 3 [5,4,3,2,1] -- [5,4,3]
take 1 [3,9,3] -- [3]
take 5 [1,2] -- [1,2]
take 0 [6,6,6] -- []
drop 3 [8,4,2,1,5,6] -- [1,5,6]
drop 0 [1,2,3,4] -- [1,2,3,4]
drop 100 [1,2,3,4] -- []
maximum [1,9,2,3,4] -- 9
minimum [8,4,2,1,5,6] -- 1
sum [5,2,1,6,3,2,5,7] -- 31
product [6,2,1,2] -- 24
4 `elem` [3,4,5,6] -- True
10 `elem` [3,4,5,6] -- False

-- 1.4
-- Ranges
[1..20]
['a'..'z']
['K'..'Z']

-- step
[2,4..20]
[3,6..20]
[13,26..24*13]
take 24 [13,26..]
take 10 (cycle [1,2,3])
take 12 (cycle "LOL ")
-- repeat is like cycle but with only one element
take 10 (repeat 5)
-- replicate simply makes list of one element
replicate 3 10
-- but floating point numbers are not precise
[0.1,0.3..1]

-- 1.5
-- List comprehension
[x*2 | x <- [1..10]]
[x*2 | x <- [1..10], x*2 >= 12]
[x | x <-[50..100], x `mod` 7 == 3]

boombangs xs = [ if x < 10 then "BOOM!" else "BANG" | x <- xs, odd x]
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
[ x+y | x <- [1,2,3], y <- [10,100,1000]]

-- product of two lists
[ x*y | x <- [2,5,10], y <- [8,10,11]]
[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

-- length of a string
let nouns = ["hobo", "frog", "pope"]
let adjectives = ["lazy","grouchy","scheming"]
[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
removeNonUppercase "HAhaha!"

let xxs = [[1,3,5,2,3,1,2,4,5], [1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
[[ x | x <- xs, even x] | xs <- xxs]

-- 1.6 tupple
(1, 3)
(3, 'a', "hello")
(50, 50.4, "hello", 'b')

-- use tupple
[(1,2), (8,11,5), (4,5)]
-- Couldn't match expected type

-- use pare
fst (8, 11)
fst ("Wow", False)

snd (8, 11)
snd ("Wow", False)

zip [1,2,3,4,5] [5,5,5,5,5]
zip [1..5] ["one", "two", "three", "four", "five"]
zip [1..] ["one", "two", "three", "four", "five"]

let triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10] ]
let rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10], a^2 + b^2 == c^2 ]
let rightTriangles' = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24 ]