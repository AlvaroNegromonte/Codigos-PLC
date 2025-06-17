import Data.List


mul2 :: [Int] -> [Int] -> [Int]
mul2 [] [] = []
mul2 (head1 : tail1) [] = (head1 * 0) : mul2 tail1 []
mul2 [] (head2 : tail2) = (0 * head2) : mul2 [] tail2
mul2 (head1 : tail1) (head2 : tail2) = (head1 * head2) : mul2 tail1 tail2



