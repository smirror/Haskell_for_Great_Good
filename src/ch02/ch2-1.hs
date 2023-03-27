-- Title: Chapter 2
-- check expression type with :t in GHCi
-- :t 'a'
-- :t True
-- :t "HELLO!"
-- :t (True, 'a')
-- :t 4 == 5

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

main :: IO ()
main = do
  print (removeNonUppercase "Hahaha! Ahahaha!")
  print (removeNonUppercase "IdontLIKEFROGS")
  print (addThree 1 2 3)
