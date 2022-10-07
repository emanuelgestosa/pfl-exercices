raizes :: Float -> Float -> Float -> (Float, Float)
raizes a b c
    | delta > 0 = ((-b + sqrt delta) / (2 * a), (-b - sqrt delta) / (2 * a))
    | otherwise = undefined
    where delta = b^2 - 4 * a * c
