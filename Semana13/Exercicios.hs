module Main (main) where

main :: IO ()
main = do
  putStrLn "hello world"

-- Exercício 1:
-- 1) False < True = True
-- 2) "elefante" > "elegante" = False
-- 3) min 'b' 'h' = 'b'
-- 4) max "amaral" "ana" = "ana"
-- 5) show True = "True"
-- 6) show 2014 = "2014"
-- 7) show 'A' = "'A'"
-- 8) show "adeus" = "\"adeus\""
-- 9) show max = error --> No instance for (Show)
-- 10) read "123" = Exception: Prelude.read: no parse
-- 11) read "123" :: Int = 123
-- 12) mod (read "123") 100 = 23
-- 13) read "'@'" :: Char = '@'
-- 14) read "@" :: Char = Exception: Prelude.read: no parse
-- 15) read "\"marcos\"" :: String = "marcos"
-- 16) read "marcos" :: String = Exception: Prelude.read: no parse
-- 17) succ 'M' = 'N'
-- 18) sin (pi/2) = 1.0
-- 19) floor (3*pi/2) = 4

-- Exercício 2:
dobro :: Num a => a -> a
dobro x = x * 2

aprovado :: (Ord a, Num a) => a -> Bool
aprovado nota = nota >= 6

myLog :: Floating a => a -> a -> a
myLog x b = log x / log b

-- Exercício 3:
isValidTriangle x y z = sum [x, y] >= z || sum [x, z] >= y || sum [y, z] >= x
