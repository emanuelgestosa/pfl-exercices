mymaximum :: Ord a => [a] -> a
mymaximum = foldr1 (\n t->if n > t then n else t)

mymaximum' :: Ord a => [a] -> a
mymaximum' = foldl1 (\t n->if n > t then n else t)

myminimum :: Ord a => [a] -> a
myminimum = foldr1 (\n t->if n < t then n else t)

myminimum' :: Ord a => [a] -> a
myminimum' = foldr1 (\n t->if n < t then n else t)

myfoldl1 :: (a -> a -> a) -> [a] -> a
myfoldl1 f xs = foldl f (head xs) (tail xs)

myfoldr1 :: (a -> a -> a) -> [a] -> a
myfoldr1 f xs = foldr f (last xs) (init xs)
