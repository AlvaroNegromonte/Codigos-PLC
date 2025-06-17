import Data.Char

addespacos :: Int -> String
addespacos 0 = ""
addespacos 1 = " "
addespacos n = " " ++ addespacos (n-1)

paradireita :: Int -> String -> String
paradireita n str = addespacos(n) ++ str


