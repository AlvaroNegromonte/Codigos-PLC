import Data.List
import Data.Char

myinsert :: Int -> [Int]-> [Int]
myinsert n [] = [n]
myinsert n (x:xs) 
    | n <= x = n : x :xs
    | otherwise = x : myinsert n xs

ehprimo :: Int -> Bool
ehprimo 0 = False
ehprimo 1 = False
ehprimo n = testadivisores n (n-1)
    where 
        testadivisores :: Int -> Int -> Bool
        testadivisores n 1 = True
        testadivisores n x
            | n `mod` x == 0 = False
            | otherwise = testadivisores n (x-1) 


sumPrimeSquares1 :: Int -> Int -> Int
sumPrimeSquares1 a b = foldr (+) 0 (map (^2) (filter ehprimo [a+1..b-1]))
        
sumPrimeSquare2 :: Int -> Int -> Int
sumPrimeSquare2 a b = foldr (+) 0 (map (\x -> x^2) (filter (\x -> ehprimo x)[a+1..b-1]))