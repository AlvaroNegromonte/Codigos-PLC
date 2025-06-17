import Data.Char
import Data.List
--funçoes em haskell sao valores
--podem ser parametros, passados para outras funçoes

--função de composição
-- (f . g) x = f (g x)

-- (.) :: (u->v)-> (t->u) -> (t-> v)
-- (.) f g x = f(g x)

-- (.) f g = \x -> f (g x) --função lambda

sqr2 = \x -> x*x

concat2 = \l1 l2 -> l1 ++ l2

--Composicao de funcoes

--fill :: String -> [Lines]
--fill s = splitLines (splitWords s)
--fill = splitLines . splitWords
-- splitWords :: String -> [Word]
-- splitLines :: [Word] -> [Line]

--Expressoes que difinem funçoes
-- addNum :: Int -> (Int -> Int)
-- addNum n = h
--     where 
--         h m = n+m
--notacao lambda
-- \m -> 3+m
addNum n = (\m-> n+m)

