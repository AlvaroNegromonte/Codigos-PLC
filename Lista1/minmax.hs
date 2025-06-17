import Data.List
import Data.Char

minMaxCartao :: String -> (Double, Double)
minMaxCartao [] = (0, 0)
minMaxCartao fatura = minMax (get_Number fatura "")

minMax :: [Double] -> (Double, Double)
minMax [] = (0, 0)
minMax (head:tail) = minMaxAux tail head head

minMaxAux :: [Double] -> Double -> Double -> (Double, Double)
minMaxAux [] min max = (min, max)
minMaxAux (head:tail) min max 
    | head < min = minMaxAux tail head max
    | head > max = minMaxAux tail min head
    | otherwise  = minMaxAux tail min max

get_Number :: String -> String -> [Double]
get_Number [] acumulador
    | isNumero acumulador = [read acumulador :: Double]
    | otherwise = []
get_Number (x:xs) acumulador
    | x == ';' && isNumero acumulador = (read acumulador :: Double) : get_Number xs ""
    | x == ';' = get_Number xs ""
    | otherwise = get_Number xs (acumulador ++ [x])

isNumero :: String -> Bool
isNumero s = case reads s :: [(Double, String)] of
    [(n, "")] -> True 
    _         -> False 