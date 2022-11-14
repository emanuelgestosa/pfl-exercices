myappend :: [a] -> [a] -> [a]
myappend xs ys = foldr (:) ys xs

myconcat :: [[a]] -> [a]
myconcat = foldr (++) []

myreverse :: [a] -> [a]
myreverse = foldr (\n t->t ++ [n]) []

myreverse' :: [a] -> [a]
myreverse' = foldl (flip (:)) []

myelem :: Eq a => a -> [a] -> Bool
myelem n = any (==n)
