--Patricia Duarte
module Programa where

ePalindromo::[Char]->Bool
ePalindromo x | x == reverse x = True
              | otherwise = False
