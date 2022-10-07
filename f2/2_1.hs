myand :: [Bool] -> Bool
myand [] = True
myand (x:xs)
    | x = myand xs
    | otherwise = False

myor :: [Bool] -> Bool
myor [] = False
myor (x:xs)
    | x = True
    | otherwise = myor xs

myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat (x:xs) = x ++ myconcat xs

myreplicate :: Int -> a -> [a]
myreplicate 0 a = []
myreplicate i a = a : myreplicate (i - 1) a

myselect :: [a] -> Int -> a
myselect [] i = undefined
myselect (x:xs) 0 = x
myselect (x:xs) i
    | i < 0 = undefined
    | otherwise = myselect xs (i - 1)

myelem :: Eq a => a -> [a] -> Bool
myelem a [] = False
myelem a (x:xs)
    | a == x = True
    | otherwise = myelem a xs
