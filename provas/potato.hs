-- import Data.List (zip4)

-- type PrecoIng = Float

-- data Batata = Doce PrecoIng | Lisa PrecoIng
--   deriving (Show, Eq)

-- data Saco = Azul PrecoIng | Vermelho PrecoIng | Verde PrecoIng
--   deriving (Show, Eq)

-- data Qtd = P PrecoIng | M PrecoIng | G PrecoIng
--   deriving (Show, Eq)

-- data Sabor = Churrasco PrecoIng | Cebola PrecoIng | Sal PrecoIng
--   deriving (Show, Eq)

-- class IsIngrediente a where
--   typeOf' :: a -> String

-- instance IsIngrediente Batata where
--   typeOf' a = "Batata"

-- instance IsIngrediente Saco where
--   typeOf' a = "Saco"

-- instance IsIngrediente Qtd where
--   typeOf' a = "Qtd"

-- instance IsIngrediente Sabor where
--   typeOf' a = "Sabor"

-- type Ruffles = (Batata, Saco, Qtd, Sabor)

-- type Custo = Float

-- data Pacotao = PacotePromo Ruffles Int Custo Pacotao | Separador | PacoteBasico Ruffles Int Custo Pacotao
--   deriving (Show, Eq)

-- class Unitario a where
--   isUni :: a -> Bool

-- instance Unitario Pacotao where
--   isUni (PacotePromo _ qtdDoPacote _) = qtdDoPacote == 1
--   isUni (PacoteBasico _ qtdDoPacote _) = qtdDoPacote == 1
--   isUni Separador = False

-- montarPacoteUnitario :: [Batata] -> [Saco] -> [Qtd] -> [Sabor] -> [Ruffles]
-- montarPacoteUnitario esteiraBatata esteiraSaco esteiraQtd esteiraSabor = itens
--   where
--     processar e1 e2 e3 e4 = foldl (\itens b -> if produtoValido b then itens ++ [b] else itens) [] $ zip4 e1 e2 e3 e4
--     itens = processar esteiraBatata esteiraSaco esteiraQtd esteiraSabor

-- --
-- --
-- -- montarPacotes ::  => [a] -> [Pacotao]
-- -- montarPacotes _ = _
-- --
-- -- montarPacotao :: [a] -> Pacotao
-- -- montarPacotao _ = _
-- --
-- -- filtrarIngrediente :: (IsIngrediente a, IsIngrediente b) => [a] -> b -> [a]
-- -- filtrarIngrediente esteira ingrediente = case typeOf' ingrediente of
-- --   "Batata" -> filter (\x -> typeOf' x == "Batata") esteira
-- --   "Saco" -> filter (\x -> typeOf' x == "Saco") esteira
-- --   "Qtd" -> filter (\x -> typeOf' x == "Qtd") esteira
-- --   "Sabor" -> filter (\x -> typeOf' x == "Sabor") esteira

-- filtrarIngrediente' :: (IsIngrediente a, IsIngrediente b) => [a] -> b -> [a]
-- filtrarIngrediente' esteira ingrediente = filter (\x -> tipo == typeOf' x) esteira
--   where
--     tipo = typeOf' ingrediente

-- filtrarIngredienteTipo' :: (IsIngrediente a, IsIngrediente b) => [a] -> b -> [a]
-- filtrarIngredienteTipo' esteira ingrediente = filter (\x -> tipo == typeOf' x) esteira
--   where
--     tipo = typeOf' ingrediente

-- filtrarIngredienteFn' :: (IsIngrediente a, IsIngrediente b) => [a] -> b -> (a -> c) -> [c]
-- filtrarIngredienteFn' esteira ingrediente fn = map fn $ filter (\x -> tipo == typeOf' x) esteira
--   where
--     tipo = typeOf' ingrediente

-- custoPacoteUnitario :: Ruffles -> Float
-- custoPacoteUnitario (batata, saco, qtd, sabor) =
--   sum $
--     [ case batata of
--         (Doce c1) -> c1
--         (Lisa c1) -> c1
--     ]
--       ++ [ case saco of
--              (Azul c2) -> c2
--              (Verde c2) -> c2
--              (Vermelho c2) -> c2
--          ]
--       ++ [ case qtd of
--              (P c3) -> c3
--              (M c3) -> c3
--              (G c3) -> c3
--          ]
--       ++ [ case sabor of
--              (Churrasco c4) -> c4
--              (Cebola c4) -> c4
--              (Sal c4) -> c4
--          ]

-- -- custoPacotes :: Ruffles -> Int -> String -> Float
-- -- custoPacotes ruffles qtd tipo = sum $ map custoPacoteUnitario $ replicate qtd ruffles

-- custoPacotes :: (Ruffles, Int) -> String -> Float
-- custoPacotes itens tipo =
--   case tipo of
--     "Promo" -> custoPacote * 0.75
--     "Basico" -> custoPacote
--     _ -> 0.0
--   where
--     custoPacote = (fromIntegral (snd itens) :: Float) * custoPacoteUnitario (fst itens)

-- custoPacotao :: [(Ruffles, Int)] -> [(String, Int)] -> Float
-- custoPacotao itens tipos = sum $ map (\(pacote, label) -> custoPacotes pacote label) pacotes
--   where
--     itensASeremProduzidos = zip itens tipos
--     getPacoteReps pacote = (snd . snd) pacote
--     getPacoteLabels pacote = (fst . snd) pacote
--     getPacoteRuffles pacote = fst pacote
--     criarPacotes pacote qtd = replicate qtd (getPacoteRuffles pacote, getPacoteLabels pacote)
--     pacotes = foldl (\pacotao pacote -> pacotao ++ criarPacotes pacote (getPacoteReps pacote)) [] itensASeremProduzidos

-- produtoValido :: Ruffles -> Bool
-- produtoValido ((Lisa _), (Azul _), _, (Sal _)) = True
-- produtoValido ((Lisa _), (Vermelho _), _, (Churrasco _)) = True
-- produtoValido ((Lisa _), (Verde _), _, (Cebola _)) = True
-- produtoValido ((Doce _), _, _, (Sal _)) = True
-- produtoValido _ = False

-- -- linhaProducao :: (IsIngrediente a) => [[a]] -> [Pacotao]
-- -- linhaProducao lucro =