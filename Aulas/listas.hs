import Data.List
--lista eh uma colecao de objetos de um msm tipo
--string eh lista de char
--pode haver lista de tuplas, onde tuplas podem ser de tipos diferentes
--[(Int,Bool)]
--ordem dos elementos importa [2,1] /= [1,2]
--[True,True] /= [True]
-- : contrutor de listas, operador polimorfico, funciona com qualquer tipo de elemento
--listas sao recursivas 
--numa lista temos cabeça e cauda, mas a cauda é também uma lista
-- [5] = 5:[] -> a cauda pode ser lista vazia
--listas enumeradas: 
--[2..7] = [2,3,4,5,6,7]
--[-1..3] = [-1,0,1,2,3]
-- ['a'..'d'] = ['a','b','c','d']
--Funcoes sobre listas
--length :: [t] -> Int, length [] = 0, length (a:as) = 1 + length as
--concatenaçao: (++) :: [t] -> [t] -> [t]
-- [] ++ y = y
--(x:xs) ++ y = x : (xs ++ y)

sumList :: [Int] -> Int
sumList [] = 0
sumList (head:tail) = head + sumList tail

double :: [Int] -> [Int]
double [] = []
double (x:xs) = 2 * x : double xs

member :: [Int]-> Int -> Bool
member [] n = False
member (x:xs) n | x == n = True
                | otherwise = member xs n

digits :: String -> String
digits [] = []
digits (c:cs) | c >= '0' && c <= '9' = c : digits cs
              | otherwise = digits cs

sumPairs :: [Int] -> [Int] -> [Int]
sumPairs [] [] = []
sumPairs (a:as) (b:bs) = a+b : sumPairs as bs
