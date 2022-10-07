binom :: Integer -> Integer -> Integer
binom n k = product [1..n] `div` (product [1..k] * product [1..n-k])

pascal :: Integer -> [[Integer]]
pascal a = [[binom n k | k<-[0..n]] | n<-[0..a]]
