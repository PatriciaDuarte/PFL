module Programa where

invertida :: [a] -> [a]
invertida[x] = [x]
invertida(x:xs) = invertida xs ++ [x] 

main = invertida[1,2,3]
