dec2int :: [Int] -> Int
dec2int xs = foldl (\n (a, b)->n + a * 10^b) 0 (reverse (zip (reverse xs) [0..]))
