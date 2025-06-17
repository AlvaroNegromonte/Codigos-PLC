-- Questão 1 – Inserção Ordenada com Duplicação Controlada (2.0 pts)
-- Implemente uma função que insere um número em uma lista ordenada, mas apenas se ele não estiver repetido mais de 2 vezes.

-- insertLimited :: Int -> [Int] -> [Int]
-- insertLimited n [] = [n]
-- insertLimited n (head:tail) 
--     | n < head && not (verif2rep n (head:tail)) = n : head : tail
--     | n > head && not (verif2rep n (head:tail)) = head : insertLimited n tail
--     | n == head && not (verif2rep n (head:tail)) = head : n : tail
--     |otherwise = head:tail 

-- verif2rep :: Int -> [Int] -> Bool
-- verif2rep n xs
--     | contador n xs >= 2 = True
--     | otherwise = False

-- contador :: Int -> [Int] -> Int
-- contador _ [] = 0
-- contador n (x:xs) 
--     | n == x = 1 + contador n xs
--     | otherwise = contador n xs

-- Questão 2 – Números Perfeitos (2.0 pts)
-- Um número é dito perfeito se é igual à soma de seus divisores próprios (ex: 6 = 1 + 2 + 3). 
--Implemente uma função que verifica se um número é perfeito:

-- ehPerfeito :: Int -> Bool
-- ehPerfeito 0 = False
-- ehPerfeito n 
--     | n == sum (findivisors n (n-1)) = True
--     | otherwise = False 

-- findivisors :: Int -> Int -> [Int]
-- findivisors n 1 = [1]
-- findivisors n x
--     | n `mod` x == 0 = x : findivisors n (x-1)
--     |otherwise = findivisors n (x-1) 


sumPrimeCubes :: Int -> Int -> Int
sumPrimeCubes a b = foldr (+) 0 (map (\x -> x^3) (filter (\x -> ehprimo x)[a+1..b-1]))

ehprimo :: Int -> Bool
ehprimo 0 = False
ehprimo 1 = False
ehprimo n = testadivisores n (n-1)
    where 
        testadivisores :: Int -> Int -> Bool
        testadivisores n 1 = True
        testadivisores n x
            | n `mod` x == 0 = False
            | otherwise = testadivisores n (x-1)

sumPrimeCubesLC :: Int -> Int -> Int
sumPrimeCubesLC a b = sum [x^3 | x <- [a+1..b-1], ehprimo x]
            

data Tree a = No a (Tree a) (Tree a) | Folha a
        deriving Show

ordenadaGen :: Ord a => Tree a -> Bool
ordenadaGen t = ordenaLista (inorderGen t)

inorderGen :: Tree a -> [a]
inorderGen (Folha x) = [x]
inorderGen (No x esq dir) = inorderGen esq ++ [x] ++ inorderGen dir

ordenaLista :: Ord a => [a] -> Bool
ordenaLista [] = True
ordenaLista [x] = True
ordenaLista (x:y:xs) = x <= y && ordenaLista (y:xs)

teste = No 10 (No 20 (Folha 2) (Folha 6))
              (No 15 (Folha 12) (Folha 20))