import Data.Char

charToInt :: Char -> Int
charToInt c
    | c == 'a' = 0
    | c == 'b' = 1
    | c == 'c' = 2
    | c == 'd' = 3
    | c == 'e' = 4
    | c == 'f' = 5
    | c == 'g' = 6
    | c == 'h' = 7
    | c == 'i' = 8
    | c == 'j' = 9
    | c == 'k' = 10
    | c == 'l' = 11
    | c == 'm' = 12
    | c == 'n' = 13
    | c == 'o' = 14
    | c == 'p' = 15
    | c == 'q' = 16
    | c == 'r' = 17
    | c == 's' = 18
    | c == 't' = 19
    | c == 'u' = 20
    | c == 'v' = 21
    | c == 'w' = 22
    | c == 'x' = 23
    | c == 'y' = 24
    | c == 'z' = 25

intToChar :: Int -> Char
intToChar i
    | i == 0  = 'a'
    | i == 1  = 'b'
    | i == 2  = 'c'
    | i == 3  = 'd'
    | i == 4  = 'e'
    | i == 5  = 'f'
    | i == 6  = 'g'
    | i == 7  = 'h'
    | i == 8  = 'i'
    | i == 9  = 'j'
    | i == 10 = 'k'
    | i == 11 = 'l'
    | i == 12 = 'm'
    | i == 13 = 'n'
    | i == 14 = 'o'
    | i == 15 = 'p'
    | i == 16 = 'q'
    | i == 17 = 'r'
    | i == 18 = 's'
    | i == 19 = 't'
    | i == 20 = 'u'
    | i == 21 = 'v'
    | i == 22 = 'w'
    | i == 23 = 'x'
    | i == 24 = 'y'
    | i == 25 = 'z'

cifrar :: Int -> String -> String
cifrar a s = [if isLetter c 
                then intToChar (charToInt c `mod` 26 + a)
                else c | c<-s]
