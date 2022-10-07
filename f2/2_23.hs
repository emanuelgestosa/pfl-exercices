fromBits :: [Int] -> Int
fromBits xs = sum [n*2^i | (n,i)<-zip xs [length xs - 1, length xs - 2..0]]
