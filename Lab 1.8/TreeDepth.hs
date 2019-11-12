module TreeDepth where

data Tree a = Empty | Node (Tree a) a (Tree a) deriving (Show, Eq)

treeFold :: b -> (b -> a -> b -> b) -> Tree a -> b
treeFold e _ Empty = e
treeFold e f(Node l x r) = f(treeFold e f l) x
                           (treeFold e f r)

treeDepth = treeFold 0 (\l _ r -> 1 + (max l r))