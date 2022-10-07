approx :: Integer -> Double
approx n = 4 * sum [(-1)^fromIntegral x/(2*fromIntegral x+1) | x<-[0..n-1]]

approx' :: Integer -> Double
approx' n = sqrt (12 * sum [(-1)^fromIntegral x/(fromIntegral x+1)^2 | x<-[0..n-1]])
