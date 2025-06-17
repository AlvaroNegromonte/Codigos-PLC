import Data.List
import Data.Char

maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar (0:0:_) = []
maquinaSomar (0:tail) = maquinaSomar tail
maquinaSomar tail = intervalSum tail 0

intervalSum :: [Int] -> Int -> [Int]
--verifixa se a soma é zero
intervalSum [] soma = [soma]
--encontrar 2 zeros 
intervalSum (0:0:_) soma = [soma]
--encontrar 1 zero e processa resto da lista
intervalSum (0:tail) soma = soma : maquinaSomar tail
--processa lista recursivamente
intervalSum (head:tail) soma = intervalSum tail (soma + head)