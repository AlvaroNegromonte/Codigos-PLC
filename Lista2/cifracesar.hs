import Data.Char
--ord transforma letra em numero ex: a = 0, b = 1
cifraCesar :: Int -> String -> String
cifraCesar n = map (transformaLetra n)

transformaLetra :: Int -> Char -> Char
transformaLetra n c
    | 'a' <= lc && lc <= 'z' = chr ((ord lc - ord 'a' + n) `mod` 26 + ord 'a') --verif se eh minusculo entre a e z
    | otherwise = c
    where lc = toLower c

main :: IO ()
main = do
  n <- readLn          -- lê o deslocamento (Int)
  str <- getLine       -- lê a string
  putStrLn $ cifraCesar n str