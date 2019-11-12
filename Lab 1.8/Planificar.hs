module Planificar where

data Tree a = Empty | Node (Tree a) a (Tree a) deriving (Show, Eq)

flatten :: Tree a -> [a]
flatten Empty = []
flatten(Node l x r) = flatten l ++ [x] ++ flatten r

