import Data.Char
import Data.List

htob :: String -> String
htob [] = []
htob (head : tail) = hextoBin head ++ htob tail

hextoBin :: Char -> String
hextoBin '0' = "0000"
hextoBin '1' = "0001"
hextoBin '2' = "0010"
hextoBin '3' = "0011"
hextoBin '4' = "0100"
hextoBin '5' = "0101"
hextoBin '6' = "0110"
hextoBin '7' = "0111"
hextoBin '8' = "1000"
hextoBin '9' = "1001"
hextoBin 'A' = "1010"
hextoBin 'B' = "1011"  
hextoBin 'C' = "1100"
hextoBin 'D' = "1101"
hextoBin 'E' = "1110"
hextoBin 'F' = "1111"
hextoBin 'a' = "1010"
hextoBin 'b' = "1011"
hextoBin 'c' = "1100"
hextoBin 'd' = "1101"
hextoBin 'e' = "1110"
hextoBin 'f' = "1111"
