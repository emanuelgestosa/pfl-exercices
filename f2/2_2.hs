myintersperse :: a -> [a] -> [a]
myintersperse a [] = []
myintersperse a [x] = [x]
myintersperse a (x:xs) = [x] ++ [a] ++ myintersperse a xs
