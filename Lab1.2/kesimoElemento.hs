module Programa where 

--kEsimo [2,7,1] 2 retorna 7
  kEsimo:: [a] -> Integer -> a
  kEsimo [] _ = undefined
  kEsimo (x:xs) n
    | (n == 1) = x
    | otherwise = kEsimo xs (n-1)
