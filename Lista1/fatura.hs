logMes :: String -> String -> Double
logMes mes fatura = foldl somar 0.0 (agrupar3 (split fatura))
  where
    -- Divide a string da fatura em campos separados por ';'
    split :: String -> [String]
    split [] = [""]
    split (x:xs)
        | x == ';'  = "":split xs
        | otherwise = juntar x (split xs)

    -- Evita uso de let/in
    juntar :: Char -> [String] -> [String]
    juntar c (y:ys) = (c:y) : ys
    juntar _ [] = [""]  -- caso especial de segurança

    -- Agrupa de 3 em 3: (date, nome, valor)
    agrupar3 :: [String] -> [(String, String, String)]
    agrupar3 [] = []
    agrupar3 (a:b:c:xs) = (a, b, c) : agrupar3 xs
    agrupar3 _ = [] -- ignora se sobrar lixo no final

    -- Usa foldl para somar os valores do mês desejado
    somar :: Double -> (String, String, String) -> Double
    somar acc (date, _, valor)
        | pegaMes date == mes = acc + read valor
        | otherwise           = acc

    -- Extrai o mês da date ("14 JAN" -> "JAN")
    pegaMes :: String -> String
    pegaMes [] = ""
    pegaMes str = pegarMesPalavras (words str)

    pegarMesPalavras :: [String] -> String
    pegarMesPalavras (_:m:_) = m
    pegarMesPalavras _ = ""

                    
    
