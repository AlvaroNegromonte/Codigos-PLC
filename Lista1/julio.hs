minMaxCartao :: String -> (Double, Double)
minMaxCartao [] = (0,0)
minMaxCartao fatura = minMax (transforma fatura "") 

  where
    minMax :: [Double]->(Double,Double) --retorna o minimo e maximo
    minMax lista =(minimum lista, maximum lista)

    transforma :: String-> String-> [Double] -- função responsavel por formatar a lista antiga e retornar uma nova so com numeros
    transforma [] forma | isNumber forma = [read forma :: Double]
                        | otherwise = []

    transforma (a:as) forma | a == ';' && isNumber forma = (read forma :: Double) : transforma as "" --aqui fazemos a criação da lista apenas com nuemros
                            | a == ';' = transforma as "" -- se for um ; continuamos a lista sem adicionar-lo
                            | otherwise = transforma as (forma ++ [a]) -- colocamos o valor da cabeça no acumulador para ver depois se é um numero



    isNumber :: String->Bool --responsavel por dizer se a string analisada pe um numero
    isNumber c = case reads c :: [(Double,String)] of
                            [(n,"")] -> True
                            _        -> False


main = do
    a <- getLine
    let result = minMaxCartao a
    print result