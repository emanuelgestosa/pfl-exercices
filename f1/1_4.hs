last1 :: [a] -> a
last1 l =
    head (reverse l)

last2 :: [a] -> a
last2 l =
    head (drop (length l - 1) l)

remove1 :: [a] -> [a]
remove1 l =
    take (length l - 1) l

remove2 :: [a] -> [a]
remove2 l =
    reverse (drop 1 (reverse l))