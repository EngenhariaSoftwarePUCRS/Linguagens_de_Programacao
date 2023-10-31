{-
    DESAFIO
    A Cifra de César é uma técnica de criptografia simples onde cada letra em um texto é deslocada por um número fixo de posições para a direita no alfabeto. Por exemplo, com um deslocamento de 3 posições, 'A' seria subs@tuído por 'D', 'B' se tornaria 'E', e assim por diante.
    Escreva uma função em Haskell que receba uma string e um número inteiro (o deslocamento) e retorne a string criptografada usando a Cifra de César
-}

-- Função para aplicar Cifra de César a uma única letra

shiftLetter :: Char -> Int -> Char
shiftLetter letter shift
    | isUpper letter = chr $ (ord 'A' + (ord letter - ord 'A' + shift) `mod` 26)
    | isLower letter = chr $ (ord 'a' + (ord letter - ord 'a' + shift) `mod` 26)
    | otherwise = letter

-- Função principal para aplicar a Cifra de César a uma string

cifraCesar :: String -> Int -> String
cifraCesar input shift = map (\letter -> shiftLetter letter shift) input

main :: IO()
main = do
    let plainText = "Felipe"
        shiftAmount = 3
    putStrLn $ "Texto original: " ++ plainText
    putStrLn $ "Deslocamento: " ++ show shiftAmount
    putStrLn $ "Texto criptografado: " ++ cifraCesar plainText shiftAmount
    putStrLn $ "Texto descriptografado: " ++ cifraCesar (cifraCesar plainText shiftAmount) (-shiftAmount)
