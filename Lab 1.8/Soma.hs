module Soma where

data Tree a = Empty | Node (Tree a) a (Tree a) deriving (Show, Eq)

treeSum::Tree Int -> Int
treeSum Node t1 a t2 = a+(treeSum t1)+(treeSum )t2
treeSum Empty = 0
