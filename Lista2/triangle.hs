type Ponto = (Int, Int)
type Area = Double

data Triangulo = Triangulo Ponto Ponto Ponto
    deriving (Show, Read, Eq)

areaTriangulo :: Triangulo -> Area
areaTriangulo (Triangulo (x1, y1) (x2, y2) (x3, y3)) =
    abs (fromIntegral (x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2)) / 2.0)

    