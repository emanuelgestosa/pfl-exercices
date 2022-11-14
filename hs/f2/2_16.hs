myconcat :: [[a]] -> [a]
myconcat xs = [x | l<-xs, x<-l]

myreplicate :: Int -> a -> [a]
myreplicate n a = [a | _<-[1..n]]

myselect :: [a] -> Int -> a
myselect xs n = last [x | (x, i)<-zip xs [0..n]]
