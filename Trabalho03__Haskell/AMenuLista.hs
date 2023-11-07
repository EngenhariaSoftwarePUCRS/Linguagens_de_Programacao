module Main where

{-
  Autores:
  Brenda Pereira
  Felipe Freitas
  Luiza Heller
-}

main = do
  printLn "Bem vindo ao programa de construção de prédios!"
  menu

menu = do
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
      menu
  else if option == "2"
    then do
      printLn "Lista de itens:"
      menu
  else if option == "3"
    then do
      printLn "Saindo da aplicação..."
  else do
    printLn "Opção inválida!"
    menu

printLn :: String -> IO ()
printLn = putStrLn
