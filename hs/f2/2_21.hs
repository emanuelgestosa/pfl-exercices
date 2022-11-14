algarismosRev :: Int -> [Int]
algarismosRev 0 = []
algarismosRev n = n `mod` 10 : algarismosRev (n `div` 10)

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

algarismos :: Int -> [Int]
algarismos n = reverseList (algarismosRev n)
