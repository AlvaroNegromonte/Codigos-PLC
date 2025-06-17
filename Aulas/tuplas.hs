-- intP :: (Int, Int)
-- intP = (33,43)

-- (True, 'x') :: (Bool,Char)
-- (34, 22, 'b') :: (Int,Int,Char)

addpair :: (Int,Int) -> Int
addpair (x,y) = x+y

shift :: ((Int,Int),Int) -> (Int,(Int,Int))
shift ((x,y), z) = (x,(y,z))

--podemos usar tuplas para montar tipos sinonimos
type Name = String
type Age = Int
type Phone = Int
type Person = (Name, Age, Phone)

name :: Person -> Name
name (n,a,p) = n 

oneroot :: Float -> Float -> Float -> Float
oneroot a b c = -b / (2.0*a)

tworoots :: Float -> Float -> Float -> (Float,Float)
tworoots a b c = (d-e,d+e)
    where d = -b/(2.0*a)
          e =  sqrt(b*b-4.0*a*c)/(2.0*a)

roots :: Float -> Float -> Float -> (Int, Float,Float)
roots a b c | b*b - 4.0 * a * c < 0 = (0,0,0)
            | b*b -4.0 *a*c == 0 = (1,(oneroot a b c), 0)
            | otherwise = (2,r1,r2)
            -- otherwise = (2,fst raizes, snd raizes)
            where (r1,r2) = tworoots a b c
            -- o primeiro elemento do par que vem de tworoots casa com r1 e o segundo com r2
           -- where raizes = tworoots a b c
