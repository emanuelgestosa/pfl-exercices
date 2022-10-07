merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x:xs) (y:ys) 
  | x < y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

metades :: [a] -> ([a], [a])
metades l =
    (take half l, drop half l)
    where half = div (length l) 2

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort (fst met)) (msort (snd met))
    where met = metades xs
