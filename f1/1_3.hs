metades :: [a] -> ([a], [a])
metades l = 
    (take half l, drop half l)
    where half = div (length l) 2