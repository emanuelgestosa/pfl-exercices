myzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myzipWith f xs [] = []
myzipWith f [] ys = []
myzipWith f (x:xs) (y:ys) = f x y : myzipWith f xs ys
