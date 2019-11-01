module Programa where

---raizesEq 1 (-2) (-3)   -> (-1,3)
  maiorAux:: (Float, Float) -> (Float, Float)
  maiorAux (x, y)
    | x < y = (x,y)
    | otherwise = (y,x)

  raizesEq :: Float -> Float -> Float -> (Float, Float)
  raizesEq a b c = maiorAux ( (((-b) + sqrt (b^2 - (4 * a * c)) )/ 2* a), (((-b) - sqrt (b^2 - (4 * a * c)) )/ 2* a))
