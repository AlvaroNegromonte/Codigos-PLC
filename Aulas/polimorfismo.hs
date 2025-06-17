import Data.List
--Funçoes polimorficas sao funçoes que sabem lidar com varios tipos de dados
-- ex: ==, < , show,
-- ex 123 == 234 ou avds == abcd

--Monomorificas:
--funcionam apenas com um tipo especifico
-- ex: Capitalize :: Char -> Char

--Polimorficas:
--funcionam com varios tipos de dados distintos
--ex: myzip (a:as) (b:bs) = (a,b) : myzip as bs
--funcionam com lista de int ou de char
--ajudam a economizar codigo

myzip :: [t] -> [u] -> [(t,u)]
myzip (a:as) (b:bs) = (a,b) : myzip as bs
myzip _ _ = []

mylength :: [t] -> Int
mylength [] = 0
mylength (a:as) = 1 + mylength as

myreverse :: [t] -> [t]
myreverse [] = []
myreverse (a:as) = myreverse as ++ [a]

--myrepeat :: (Num t, Eq t) => t -> c -> [c]
myrepeat :: Int-> c -> [c]
-- Num t => t -> c -> [c] restricao de tipo para t, t precisa ser um numero
-- Num eh uma classe: Int eh da classe num, Float, Double

myrepeat 0 ch =[]
myrepeat n ch = ch : myrepeat (n-1) ch
 
--polimorfismo de sobrecarga
--sobrecarga: mesmo noime de funçao que funciona com tipos distintos
--Classe: colecao de tipos para os quais a funcao esta definida
--ex: o conjunto de tipos para os quais (==) esta definida é a classe Eq
--exs: Eq, Ord, Show
--Int eh uma instancia da classe Eq pq as operacoes dessa classe estao disponiveis para Int
