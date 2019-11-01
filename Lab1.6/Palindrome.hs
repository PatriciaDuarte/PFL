--Student: Patrícia
module Palindrome where

import Data.Char (toLower, isAlpha)

main :: IO()
main = do { putStrLn "Digite uma string:";
              entrada<-getLine ;
              if verificaPalindroma entrada then putStrLn "É uma string palindroma"
              else putStrLn "Não é uma string palindroma."
          }

verificaPalindroma :: String -> Bool
verificaPalindroma entrada = (aux == reverse aux)
   where aux = map toLower (filter isAlpha entrada)
