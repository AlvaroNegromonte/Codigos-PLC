import Data.List

unzip' :: [(a, b)] -> ([a], [b])
unzip' = foldr (\(a,b) (as,bs) -> (a:as, b:bs)) ([], [])

main :: IO ()
main = interact $ show . unzip' . (read :: String -> [(Int,Int)])