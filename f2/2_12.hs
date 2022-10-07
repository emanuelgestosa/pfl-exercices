divprop :: Integer -> [Integer]
divprop a = [n | n<-[1..div a 2], mod a n == 0]

primo :: Integer -> Bool
primo 1 = True
primo a = length (divprop a) == 1

