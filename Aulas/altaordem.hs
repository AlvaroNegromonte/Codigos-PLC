applybinoper :: (t -> t -> u) -> t -> t -> u
--como f eh uma função o tipo dessa função aparece entre parenteses
applybinoper f x y = f x y
--funçao como parametro de outra funcao
--uma funçao pode ser devolvida como resultado de outra função


-- double :: [Int] -> [Int]
-- double [] = []
-- double (a:x) = (2*a) : double x

-- sqrList :: [Int] -> [Int]
-- sqrList [] = []
-- sqrList (a:x) = (a*a) : sqrList x
--Sao funçoes mt semelhantes, que possuem o msm padrao de recursao
--funçoes que possuem essa caracteristica de receber uma lista como parametro e devolver outra, com a msm qtde de elementos 
--eh chamada de função de mapeamento

times2 :: Int-> Int
times2 n = 2* n

sqr :: Int -> Int
sqr n = n*n
--funçoes de tranformação: transformam os elementos da lista 1 a 1

-- map :: (t->u) -> [t] -> [u]
-- map f [] = []
-- map f (a:as) = f a : map f as
--eh uma funçao padrao da biblioteca de haskell

mymap :: (t -> u) -> [t] -> [u]
mymap f [] = []
mymap f (a:as) = f a : mymap f as

double :: [Int] -> [Int]
double [] = []
double xs = map times2 xs

sqrList :: [Int] -> [Int]
sqrList [] = []
sqrList xs = map sqr xs

--Outra definicao pra map
--map f l = [f a | a<-l]

maxFun :: (Int-> Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = max (maxFun f (n-1)) (f n)


myfold :: (t->t->t) -> [t] -> t
myfold f [a] = a
myfold f (a:as) = f a (myfold f as)

sumList2 l = myfold (+) l

