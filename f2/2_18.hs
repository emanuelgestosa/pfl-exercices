mindiv :: Int -> Int
mindiv n = head ([x | x<-[2..round(sqrt (fromIntegral n))], n `mod` x == 0] ++ [n])

isPrime :: Int -> Bool
isPrime n = mindiv n == n
