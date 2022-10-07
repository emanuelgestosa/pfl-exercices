mynub :: Eq a => [a] -> [a]
mynub [] = []
mynub (x:xs) = x : mynub [c | c<-xs, c /= x]
