palavras :: String -> [String]
palavras = foldr (\c n->
    case n of
      []->if c/=' ' then [[c]] else [[]]
      x:xs->if c/=' ' then (c:x):xs else []:x:xs
    ) []
