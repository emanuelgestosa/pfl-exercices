myminimum :: Ord a => [a] -> a
myminimum [x] = x
myminimum (x:xs)
  | x < min = x
  | otherwise = min
  where min = myminimum xs

mydelete :: Eq a => a -> [a] -> [a]
mydelete a [] = []
mydelete a (x:xs)
  | a == x = xs
  | otherwise = x : mydelete a xs

myssort :: Ord a => [a] -> [a]
myssort [] = []
myssort xs = min : myssort (mydelete min xs)
  where min = myminimum xs
