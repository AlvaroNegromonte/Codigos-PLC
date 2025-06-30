data Tree t = Node t (Tree t) (Tree t) | Nilt
  deriving (Read, Show)

--Converte de Int para cada base nitrogenada codificada
converter :: Int -> Char
converter n = case n `mod` 5 of
  0 -> 'E'
  1 -> 'M'
  2 -> 'A'
  3 -> 'C'
  4 -> 'S'

--Percorre a árvore em ordem (in-order traversal)
inOrder :: Tree Int -> [Int]
inOrder Nilt = []
inOrder (Node v l r) = inOrder l ++ [v] ++ inOrder r

--Quebra uma lista em blocos de no max n elementos
bloco :: Int -> [a] -> [[a]]
bloco _ [] = []
bloco n xs = take n xs : bloco n (drop n xs)


dna1 :: Tree Int -> [String]
dna1 tree = bloco 8 $ map converter (inOrder tree)


main :: IO ()
main = do
  input <- getLine
  let result = dna1 (read input :: Tree Int)
  print result
