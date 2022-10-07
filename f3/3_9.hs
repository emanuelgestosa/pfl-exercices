myscanl :: (a -> b -> a) -> a -> [b] -> [a]
myscanl f z [] = [z]
myscanl f z xs = myscanl f z (init xs) ++ [foldl f z xs]
