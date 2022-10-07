toBitsRev :: Int -> [Int]
toBitsRev 0 = []
toBitsRev n = n `mod` 2 : toBitsRev (n `div` 2)

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

toBits :: Int -> [Int]
toBits n = reverseList (toBitsRev n)
