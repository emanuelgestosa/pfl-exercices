divprop :: Integer -> [Integer]
divprop a = [n | n<-[1..div a 2], mod a n == 0]
