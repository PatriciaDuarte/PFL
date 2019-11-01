module PosicaoCavalo where

proxCavalo(x,y) = filter posicaoValida $
	           [(x+2,y-1),(x+2, y+1),(x-2,y-1),(x-2, y+1)
               (x+1,y-2),(x+1, y+2),(x-1,y-2),(x-1, y+2)]
where posicaoValida(x,y) =  x>0 && x<9 && y `elem` [1..8]
main = print ""

--teste no ghci: return (3,3) >>= proxCavalo

{--
   --using do
   cavalo <-(3,3)
   cavalo2 <- proxCavalo cavalo
   cavalo3 <- proxCavalo cavalo2
   fim <- proxCavalo cavalo3
   return fim
--}