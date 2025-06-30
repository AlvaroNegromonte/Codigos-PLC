data Command = Forward Int | Backward Int | TurnLeft | TurnRight
               deriving (Eq, Show, Read)


type Direction = (Int, Int)


turnLeft :: Direction -> Direction
turnLeft (dx, dy) = (-dy, dx)


turnRight :: Direction -> Direction
turnRight (dx, dy) = (dy, -dx)

-- Aplica cada comando à posição e direção atual
move :: ((Int, Int), Direction) -> Command -> ((Int, Int), Direction)
move ((x, y), dir@(dx, dy)) cmd = case cmd of
    TurnLeft       -> ((x, y), turnLeft dir)
    TurnRight      -> ((x, y), turnRight dir)
    Forward n      -> ((x + dx * n, y + dy * n), dir)
    Backward n     -> ((x - dx * n, y - dy * n), dir)

-- Função principal que processa a lista de comandos
--start eh a tupla com posicao inicial
destination :: (Int, Int) -> [Command] -> (Int, Int)
destination start cmds = fst $ foldl move (start, (0,1)) cmds
--usamos fst para obter apenas a tupla que nos interessa, que eh a da posicao

-- Função main para ler a entrada
main :: IO ()
main = do
    a <- getLine
    b <- getLine
    let result = destination (read a) (read b)
    print result
