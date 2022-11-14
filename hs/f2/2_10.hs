divprop :: Integer -> [Integer]
divprop a = [n | n<-[1..div a 2], mod a n == 0]

perfeitos :: Integer -> [Integer]
perfeitos n = [x | x<-[1..n], sum (divprop x) == x]
