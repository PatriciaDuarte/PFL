module Programa where

comprimeL :: [Char] -> [Char]
comprimeL [] = []
comprimeL (x:[]) = [x]
comprimeL (x:(y:ys)) | x == y = comprimeL(y:ys)
                     | otherwise = x:(comprimeL(y:ys))
