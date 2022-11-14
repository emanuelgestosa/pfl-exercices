data Arv a = Vazia | No a (Arv a) (Arv a)
    deriving Show

mais_dir :: Arv a -> a
mais_dir (No x _ Vazia) = x
mais_dir (No _ _ a1) = mais_dir a1

remover :: Ord a => a -> Arv a -> Arv a
remover x Vazia = Vazia 
remover x (No y Vazia a2)
    | x == y = a2
remover x (No y a1 Vazia)
    | x == y = a1
remover x (No y a1 a2)
    | x < y = No y (remover x a1) a2
    | x > y = No y a1 (remover x a2)
    | x == y = let z = mais_dir a1
               in No z (remover z a1) a2
