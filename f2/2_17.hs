forte :: String -> Bool
forte s = length s >= 8 && or [c >= 'A' && c <= 'Z' | c<-s] && or [c >= 'a' && c <= 'z' | c<-s] && or [c >= '0' && c <= '9' | c<- s]
