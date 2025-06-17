somanums :: [Int] -> Int
somanums [] = 0
somanums (x:xs) = x + somanums xs

greater :: [Int] -> Bool
greater nums = (somanums nums > 10)

square :: Int -> Int
square x = x*x

maxi :: Int -> Int -> Int
maxi a b | a >= b = a
         | otherwise = b

maxi' :: Int->Int->Int
maxi' a b = max a b


imc :: Float -> Float -> Float
imc peso altura = peso/(altura^2)

verifica :: Int->Int->Int->Bool
verifica a b c | a<b && b<c = True
               | otherwise = False

vendas :: Int -> Int
vendas 0 = 30
vendas 1 = 50
vendas 2 = 20
vendas 3 = 80
vendas 4 = 100
vendas 5 = 70

totalVendas :: Int-> Int
totalVendas n | n == 0 = vendas 0
              | n < 0 = 0
              | otherwise = totalVendas (n-1) + vendas n
