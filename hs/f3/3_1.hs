mapfilter :: (a->b) -> (a->Bool) -> [a] -> [b]
mapfilter f p xs = map f (filter p xs)
