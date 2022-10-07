mytranspose :: [[a]] -> [[a]]
mytranspose linhas = [[linha !! i | linha<-linhas] | i<-[0..length (head linhas) - 1]]
