data Arv a = Vazia | No a (Arv a) (Arv a)

nivel :: Int -> Arv a -> [a]
nivel i Vazia = []
nivel 0 (No v a1 a2) = [v]
nivel i (No v a1 a2) = nivel (i - 1) a1 ++ nivel (i - 1) a2
