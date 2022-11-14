classifica :: Int -> String
classifica a 
    | a <= 9    = "reprovado"
    | a <= 12   = "suficiente"
    | a <= 15   = "bom"
    | a <= 18   = "muito bom"
    | a <= 20   = "muito bom com distinção"
    | otherwise = "nota inválida"
