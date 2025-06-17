import Data.Char
import Data.List

isReplica :: String -> Int -> Char -> Bool
isReplica [] 0 _ = True
isReplica [] _ _ = False
isReplica (head:tail) x char
    | x<= 0 = False
    | head == char = isReplica tail (x-1) char
    | otherwise = False 



{-main = do
    a <- getLine
    b <- getLine
    c <- getChar
    let result = isReplica a (read b) c
    print result-}