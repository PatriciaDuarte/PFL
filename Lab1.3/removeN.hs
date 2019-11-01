module Programa where

remove :: Integer -> [Integer] -> [Integer]
remove n (x:xs) = [c | c <-(x:xs) , c/= n]
--main = remove 2 [1,2,3]
