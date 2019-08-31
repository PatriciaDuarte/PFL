module Programa where 

--fatorial
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial(n-1)

main = fatorial 3
