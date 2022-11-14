palavras :: String -> [String]
palavras = foldr (\c n->
    case n of
      []->if c/=' ' then [[c]] else [[]]
      x:xs->if c/=' ' then (c:x):xs else if x/=[] then []:x:xs else x:xs
    ) []

despalavras :: [String] -> String
despalavras xs = init (foldr (\xs r->xs++[' ']++r) [] xs)
