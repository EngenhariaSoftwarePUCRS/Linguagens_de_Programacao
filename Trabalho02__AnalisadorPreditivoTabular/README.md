# Trabalho 02 - Analisador Preditivo Tabular

## Integrantes

- Brenda Camara
- Felipe Freitas
- Luiza Heller

## Informações importantes:

Para utilizar o programa, é necessário ter o Java instalado na máquina. O programa foi desenvolvido utilizando a versão 19 do Java, mas deve funcionar em versões mais antigas também.

A biblioteca JavaCC já está disponível em format `.jar` na pasta `lib`.

## Gramáticas disponíveis:

### Soma de A's

Esta gramática reconhece expressões matemáticas simples, compostas apenas por letras 'a' e operadores de soma. Exemplos de expressões válidas: `a`, `a+a`, `a+a+a`, etc.

```
G = ({ E, E’, T}, {+, a} P, E) 
P: { E -> TE’ 
       E’-> +TE’ |  ε  
       T -> a }
```

### Programa de For's

Esta gramática reconhece programas simples escritos em uma linguagem de programação fictícia, composta por comandos de atribuição e comandos de repetição. Exemplos de programas válidos: `for (id = id; id op id) id = id;`, `for (id = id; id op id) for (id = id; id op id) id = id;`, etc.

```
G = ({S, A, E, C}, {for, id, =, op, ;, (, ) }, P, S) 
P: { S -> for (A;E) C 
       A -> id = id 
       E -> id op id 
       C -> A | S }
```

## Como testar

Antes de poder enviar scripts, é necessário gerar os analisadores sintáticos. Para isso, basta executar o script `generate_analyzers.sh`:

```bash
generate_analyzers.sh
```

Para testar os analisadores sintáticos, basta rodar o arquivo Java disponível em `src/App.java`:

```bash
javac src/App.java
java src/App.java
```

Caso reclame de algum erro de compilação, a alternativa encontrada pela equipe é executar o arquivo por meio do Java Extension Pack do VSCode.

Ao rodar o arquivo main, ele vai perguntar qual analisador que utilizar (Soma de A's ou Programa de For's). Após escolher, ele vai pedir para digitar ou o caminho para um arquivo de teste ou o próprio código. Após isso, ele vai imprimir se o código está sintaticamente correto ou, caso não esteja, vai imprimir o erro encontrado.

Existe, em cada uma das pastas, um arquivo de teste válido e inválido para cada gramática. Para testar, basta copiar o caminho relativo do arquivo e colar no terminal quando for solicitado.
