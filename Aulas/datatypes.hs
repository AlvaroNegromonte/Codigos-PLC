-- f n + 1 ==> (f n) + 1
-- f (n+1)
-- 2 + 3 = (+) 2 3 
-- maxi 2 4 = `maxi` 4

--Definições Locais

import Data.Char

-- ord :: Char -> Int
-- chr :: Int -> Char

sumSquares :: Int->Int->Int
sumSquares x y = sqX + sqY
    where sqX = x*x
          sqY = y*y

sumSquares' :: Int->Int->Int
sumSquares' x y = sq x + sq y
    where sq a = a*a

sumSquares'' :: Int->Int->Int
sumSquares'' x y = let sqX = x*x
                       sqY = y*y
                   in sqX + sqY


offset = ord 'A' - ord 'a'

maiuscula :: Char -> Char
maiuscula ch = chr (ord ch + offset)

ehdigito :: Char -> Bool
ehdigito ch = ('0' <= ch) && (ch <= '9')

-- ++ concatena strings
-- show transforma qualquer tipo em string
-- ' ' char acractere vazio "" eh string vazia " " eh string com caractere vazio

-- Float e Double
-- pi :: float
-- ceiling, floor, round :: Float -> Int
-- fromIntegral :: Int -> Float
-- read :: String -> ? essa funçao processa uma string para ver se ela eh float, int, ...
-- show  :: Float -> String
--read lembra o atoi de C

addEspacos :: Int -> String
addEspacos 0 = ""
addEspacos 1 = " "
addEspacos n = " " ++ addEspacos (n-1)

shiftright :: Int -> String -> String
shiftright n str = addEspacos n ++ str
