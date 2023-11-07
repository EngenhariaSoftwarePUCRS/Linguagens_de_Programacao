module Main where

{-
  Autores:
  Brenda Pereira
  Felipe Freitas
  Luiza Heller
-}

data Item = Item {
  name:: String,
  price:: Float
} deriving Show

main = do
  printLn "Bem vindo ao programa de construção de prédios!"
  menu []

menu :: [Item] -> IO ()
menu list = do
  printLn "-------------------------------------------"
  printLn "Escolha uma opção:"
  printLn "(1) Adicionar um item na lista"
  printLn "(2) Listar todos os itens disponíveis"
  printLn "(3) Sair da aplicação"
  option <- getLine
  if option == "1"
    then do
      printLn "Digite o nome do item"
      name <- getLine
      printLn "Digite o preço do item"
      price <- getLine
      printLn "Item adicionado com sucesso!"
      let item = Item name (read price :: Float)
      let updatedList = list ++ [item]
      menu updatedList
  else if option == "2"
    then do
      printLn "Lista de itens:"
      printList list
      menu list
  else if option == "3"
    then do
      printLn "Saindo da aplicação..."
      printLn "Obrigado por utilizar!"
      printLn "-------------------------------------------"
  else do
    printLn "Opção inválida!"
    menu list

printLn :: String -> IO ()
printLn = putStrLn

printList :: [Item] -> IO ()
printList (x:xs) = do
  printLn (name x ++ " - R$" ++ show (price x))
  printList xs
printList [] = printLn ""
