-- Função principal de decomposição
fatPrime :: Int -> [(Int, Int)]
fatPrime n = contaFatores (primeFactors n)

-- Conta quantas vezes cada fator aparece seguidamente
contaFatores :: [Int] -> [(Int, Int)]
contaFatores [] = []
contaFatores (x:xs) = (x, contaOcorrencias x xs 1) : contaFatores (resto x xs)

-- Conta quantas vezes o fator x aparece no início da lista
contaOcorrencias :: Int -> [Int] -> Int -> Int
contaOcorrencias _ [] acc = acc
contaOcorrencias x (y:ys) acc
    | x == y    = contaOcorrencias x ys (acc + 1)
    | otherwise = acc

-- Remove os elementos iguais a x do início da lista
resto :: Int -> [Int] -> [Int]
resto _ [] = []
resto x (y:ys)
    | x == y    = resto x ys
    | otherwise = y:ys

-- Fatores primos com repetição
primeFactors :: Int -> [Int]
primeFactors n = fator n 2
  where
    fator 1 _ = []
    fator n d
      | mod n d == 0 = d : fator (div n d) d
      | d * d > n    = [n]
      | otherwise    = fator n (d + 1)
