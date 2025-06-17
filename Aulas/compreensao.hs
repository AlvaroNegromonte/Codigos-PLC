type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]

baseExemplo :: BancoDados
baseExemplo = [("Sergio", "Livro A"), 
               ("Ana", "Livro B"), 
               ("Carlos", "Livro C"), 
               ("Sergio", "Livro D"), 
               ("Ana", "Livro E"), 
               ("João", "Livro F")]

livros :: BancoDados -> Pessoa -> [Livro]
livros bd p = [ll | (pp,ll)<- bd, pp == p ]
--retorna todos os livros que a pessoa p está 
emprestimos :: BancoDados -> Livro ->[Pessoa]
emprestimos bd l = [pp | (pp,ll)<- bd, ll == l]
--
emprestado :: BancoDados -> Livro -> Bool
emprestado bd l = length (emprestimos bd l) > 0
qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos bd p = length (livros bd p)
emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar [] pessoa livro = [(pessoa,livro)]
emprestar ((p,l):as) pessoa livro
    | p == pessoa && l == livro = ((p,l):as)
    | otherwise = ((p,l): emprestar as pessoa livro)
devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver [] pessoa livro = [(pessoa,livro)]
devolver ((p,l):as) pessoa livro
    | p == pessoa && l == livro = as
    | otherwise = (p,l) : devolver as pessoa livro