--Patricia Duarte da Silva
module Programa where 

--ultimo elemento na lista
ultimo :: [Int] -> Int
ultimo [] = undefined
ultimo(x:xs)
  |xs == [] = x
  |otherwise = ultimo xs
main = ultimo[1,2,3,4]
