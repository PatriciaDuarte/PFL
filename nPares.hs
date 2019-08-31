--Patricia Duarte da Silva
module Programa where 

--contagem de pares na lista
nPares :: [Int] -> Int
nPares [] = 0
nPares(x:xs)
  |x `mod` 2 == 0 = 1 + nPares xs
  |otherwise = nPares xs
main = nPares[1,2,3,4,6,8,10]
