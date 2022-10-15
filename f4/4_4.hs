data Arv a = Vazia | No a (Arv a) (Arv a)
    deriving Show

mapArv :: (a -> b) -> Arv a -> Arv b
mapArv f Vazia = Vazia
mapArv f (No v a1 a2) = No (f v) (mapArv f a1) (mapArv f a2)
