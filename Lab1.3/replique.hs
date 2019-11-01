module Programa where

replique :: Int -> [Int] -> [Int] 
replique n [] = [] 
replique n (x:xs) = [x | x <- (x:xs), y<-[1..n]] 