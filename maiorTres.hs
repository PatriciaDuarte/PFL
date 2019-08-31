module Programa where 

maiorTres :: Int -> Int -> Int -> Int
maiorTres a b c
          | a>=b && a>=c = a
          | b>=a && b>=c = b
          |otherwise = c
main = maiorTres 8 7 5


