rlencode0 :: [Int]->[Int]
rlencode0 [] = []
rlencode0 (0:nums) | temzero nums = 0: (1+ contaZeros nums) : rlencode0 (tirazeros nums)
                   | otherwise = 0:1:rlencode0 nums  
rlencode0 (n:nums) = n:rlencode0 nums

rlencode00 :: [Int]->[Int]
rlencode00 [] = []
rlencode00 (0:nums) | temzero nums = 0: (1+ contaZeros nums) : rlencode00 (tirazeros nums) 
rlencode00 (n:nums) = n:rlencode00 nums
temzero :: [Int]-> Bool
temzero [] = False
temzero (a:as) = (a == 0)

contaZeros :: [Int] -> Int
contaZeros [] = 0
contaZeros (0:resto) = 1 + contaZeros resto
contaZeros (n:resto) = 0


tirazeros :: [Int] -> [Int]
tirazeros [] = [] 
tirazeros (0:xs) = tirazeros xs
tirazeros (x:xs) = (x:xs)


rldecode0 :: [Int]->[Int]
rldecode0 [] = []
rldecode0 (0:n:nums) = 0 : repetez (n-1) ++ rldecode0 nums
--rldecode0 (0:n:nums) = repetez (n) : rldecode0 nums
rldecode0 (n:nums) = n:rldecode0 nums

repetez :: Int -> [Int]
repetez 0 = []
repetez 1 = [0]
repetez n = 0 : repetez (n-1)