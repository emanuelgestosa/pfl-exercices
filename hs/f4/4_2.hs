data Arv a = Vazia | No a (Arv a) (Arv a)

listar :: Arv a -> [a]
listar Vazia = []
listar (No v a1 a2) = listar a2 ++ [v] ++ listar a1
