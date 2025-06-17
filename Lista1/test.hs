maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar (0:0:_) = [] -- dois zeros seguidos: para tudo
maquinaSomar (0:xs) = maquinaSomar xs -- ignora esse zero e segue
maquinaSomar xs = intervalSum xs 0

intervalSum :: [Int] -> Int -> [Int]
intervalSum [] soma
    | soma == 0 = []
    | otherwise = [soma]

intervalSum (0:0:_) soma
    | soma == 0 = []
    | otherwise = [soma]

intervalSum (0:xs) soma = soma : maquinaSomar xs

intervalSum (x:xs) soma = intervalSum xs (soma + x)
