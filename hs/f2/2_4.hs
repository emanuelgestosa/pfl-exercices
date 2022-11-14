myinsert :: Ord a => a -> [a] -> [a]
myinsert a [] = [a]
myinsert a (x:xs) 
    | a < x = [a] ++ [x] ++ xs
    | otherwise = x : myinsert a xs

myisort :: Ord a => [a] -> [a]
myisort [] = []
myisort (x:xs) = myinsert x (myisort xs)
