aux1 :: Int -> String
aux1 a
  | a == 1   = "um"
  | a == 2   = "dois"
  | a == 3   = "tres"
  | a == 4   = "quatro"
  | a == 5   = "cinco"
  | a == 6   = "seis"
  | a == 7   = "sete"
  | a == 8   = "oito"
  | a == 9   = "nove"
  | a == 10  = "dez"
  | a == 11  = "onze"
  | a == 12  = "doze"
  | a == 13  = "treze"
  | a == 14  = "quatorze"
  | a == 15  = "quinze"
  | a == 16  = "dezasseis"
  | a == 17  = "dezassete"
  | a == 18  = "dezoito"
  | a == 19  = "dezanove"

aux2 :: Int -> String
aux2 a
  | a == 2 = "vinte"
  | a == 3 = "trinta"
  | a == 4 = "quarenta"
  | a == 5 = "cinquenta"
  | a == 6 = "sessenta"
  | a == 7 = "setenta"
  | a == 8 = "oitenta"
  | a == 9 = "noventa"

aux3 :: Int -> String
aux3 a
  | a == 1 = "cento"
  | a == 2 = "duzentos"
  | a == 3 = "trezentos"
  | a == 4 = "quatrocentos"
  | a == 5 = "quinhentos"
  | a == 6 = "seiscentos"
  | a == 7 = "setecentos"
  | a == 8 = "oitocentos"
  | a == 9 = "novecentos"

converte :: Int -> String
converte a 
  | a < 20      = aux1 a
  | a < 100     = if mod a 10  == 0 then aux2 (div a 10)  else aux2 (div a 10)  ++ " e " ++ converte (mod a 10)
  | a == 100    = "cem"
  | a < 1000    = if mod a 100 == 0 then aux3 (div a 100) else aux3 (div a 100) ++ " e " ++ converte (mod a 100)
  | a < 1000000 = converte (div a 1000) ++ " mil" ++ if mod a 1000 > 0 then " e " ++ converte (mod a 1000) else ""
  | otherwise   = "maior que um milhão"
