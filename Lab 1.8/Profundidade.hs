module Profundidade where

data Tree a = Empty | Node (Tree a) a (Tree a) deriving (Show, Eq)

treeDepth :: Tree a -> Integer
treeDepth Empty = 0 
treeDepth(Node l _ r) = 1 + max(treeDepth l) (treeDepth r)

