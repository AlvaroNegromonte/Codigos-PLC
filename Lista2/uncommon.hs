import Data.Char (toLower)
import Data.List (sort, group, sortBy)

toLowerStr :: String -> String
toLowerStr = map toLower

--conta quantas vezes cada palavra aparece e retorna apenas as que aparecem uma vez
uniqueWords :: [String] -> [String]
uniqueWords ws = [w | w <- ws, count w ws == 1]

--conta quantas vezes uma palavra aparece na lista
count :: Eq a => a -> [a] -> Int
count x = length . filter (== x)

--aplica func unique sobre as strings e filtra o desejado
uncommonFromTwoSentences :: String -> String -> [String]
uncommonFromTwoSentences s1 s2 =
  let
    w1 = map toLowerStr (words s1)
    w2 = map toLowerStr (words s2)

    u1 = uniqueWords w1
    u2 = uniqueWords w2

    --pega as que aparecem 1x em uma lista e n estao na outra
    onlyIn1 = filter (`notElem` w2) u1
    onlyIn2 = filter (`notElem` w1) u2
  in
    sort (onlyIn1 ++ onlyIn2)

-- Função main
main :: IO ()
main = do
  sentence_1 <- getLine
  sentence_2 <- getLine
  let result = uncommonFromTwoSentences sentence_1 sentence_2
  print result
