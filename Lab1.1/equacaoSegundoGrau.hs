--Patricia Duarte da Silva
module Programa where 

--Equação do segundo grau
delta :: Float -> Float -> Float -> Float
delta a b c = b^2 - 4*a*c
raizEq1 :: Float -> Float -> Float -> Float
raizEq1 a b c = ((-b) + sqrt(delta a b c)) / (2*a)
raizEq2 :: Float -> Float -> Float -> Float
raizEq2 a b c = ((-b) -sqrt(delta a b c)) / (2*a)
main = (raizEq1 1 (-2) (-3), raizEq2 1 (-2) (-3))
