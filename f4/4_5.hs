data Arv a = Vazia | No a (Arv a) (Arv a)
    deriving Show

inserir :: Ord a => a -> Arv a -> Arv a
inserir x Vazia = No x Vazia Vazia
inserir x (No y esq dir)
    | x==y = No y esq dir -- já ocorre; não insere
    | x<y = No y (inserir x esq) dir -- insere à esquerda
    | x>y = No y esq (inserir x dir) -- insere à direita

construir :: Ord a => [a] -> Arv a
construir [] = Vazia
construir (x:xs) = inserir x (construir xs)

construir' :: Ord a => [a] -> Arv a
construir' = foldr inserir Vazia

height :: Arv a -> Int
height Vazia = 0
height (No _ a1 a2) =  1 + max (height a1) (height a2)
