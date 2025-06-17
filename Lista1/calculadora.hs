type Comando = String
type Valor = Int

executa :: [(Comando, Valor)] -> Int
executa [] = 0
executa comandos = executaAux comandos 0

executaAux :: [(Comando, Valor)] -> Int -> Int
executaAux [] acc = acc
executaAux ((comando, valor) : tail) acc
    | comando == "Soma" = executaAux tail (acc + valor)
    | comando == "Subtrai" = executaAux tail (acc - valor)
    | comando == "Multiplica" = executaAux tail (acc * valor)
    | comando == "Divide" && valor /= 0 = executaAux tail (div acc valor)
    | comando == "Divide" && valor == 0 = -666
