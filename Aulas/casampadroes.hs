import Data.List

-- Uso de padroes no lugar de variáveis, na definiççao de funcoes

-- maxVendas :: Int -> Int
-- maxVendas 0 = vendas 0
-- maxVendas n = maxi (maxVendas (n-1)) (vendas n)

-- totalVendas :: Int -> Int
-- totalVendas 0 = vendas 0
-- totalVendas n = totalVendas (n-1) + vendas n


-- maiorLista :: [Int] -> Int
-- maiorLista [] = minBound :: Int --um padrao (lista vazia)
-- maiorLista [x] = x --outro padrao (lista com unico valor)
-- maiorLista (x:xs) --outro padrão (lista normal)
--         | x > maiorLista xs = x
--         | otherwise = maiorLista xs


-- firstDigit :: String -> Char
-- firstDigit st = case (digits st) of
--                 [] -> '\0' --padrao de lista vazia
--                 (a:as) -> a --padrao de lista normal

-- o uso do case permite casamento de padroes com valores arbitrarios


somaordenada :: [Int] -> [Int]
somaordenada [] = []
somaordenada lista = sort (map somaalgarismos lista)

somaalgarismos :: Int-> Int
somaalgarismos 0 = 0
somaalgarismos n = (n `mod` 10) + somaalgarismos (n`div` 10)
