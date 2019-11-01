module Elemento where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)  

singleton :: a -> Tree a  
singleton x = Node x EmptyTree EmptyTree  
  
insereElem :: (Ord a) => a -> Tree a -> Tree a  
insereElem x EmptyTree = singleton x  
insereElem x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insereElem x left) right  
    | x > a  = Node a left (insereElem x right) 

elemTree :: (Ord a) => a -> Tree a -> Bool  
elemTree x EmptyTree = False  
elemTree x (Node a left right)  
    | x == a = True  
    | x < a  = elemTree x left  
    | x > a  = elemTree	 x right   
