--Nome:Patrícia
module FiguraGeometrica   
( Ponto(..)  
, Figura(..)  
, area  
,getRaio
, deslocar 
,baseCirculo
,baseRetang 
) where  


data Ponto = Ponto Float Float deriving(Show)

data Figura =  Circulo Ponto Float| Retangulo Ponto Ponto  deriving(Show)

area :: Figura -> Float
area (Circulo  _ _ r) = pi*(r^2)
area (Retangulo (Ponto x1 y1) (Ponto x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

getRaio::Figura -> Float
getRaio (Circulo _ _ r) = r

deslocar:: Figura -> Float -> Float -> Figura
deslocar (Circulo (Ponto x y) r) a b = Circulo (Ponto (x+a) (y+b)) r
deslocar (Retangulo (Ponto x1 y1) (Ponto x2 y2)) a b = Retangulo (Ponto (x1+a) (y1+b)) (Ponto (x2+a) (y2+b)) 

-- criar um cırculo na coordenada (0,0)
baseCirculo :: Float -> Figura
baseCirculo r = Circulo (Ponto 0 0) r
-- criar um retangulo partindo da coordenada (0,0) at´e (x,y)
baseRetang :: Float -> Float -> Figura
baseRetang x y = Retangulo (Ponto 0 0) (Ponto x y)