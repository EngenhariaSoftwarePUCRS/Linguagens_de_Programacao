% Grupo
% Brenda Pereira
% Felipe Freitas
% Luiza Heller

% Fatos
homem(jose).
homem(simao).
homem(willy).
homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

mulher(joana).
mulher(matilde).
mulher(camelia).
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

pai(jose,ana).
pai(jose,gil).
pai(simao,ivo).
pai(willy,bia).
pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ari,gal).
pai(noe,animais). % Nova inserção
% Consulta:
% pai(X,animais) --> noe

mae(joana,ana).
mae(joana,gil).
mae(matilde,ivo).
mae(camelia,bia).
mae(ana,eva).
mae(bia,rai).
mae(bia,clo).
mae(bia,ari).
mae(eva,noe).
mae(lia,gal).
mae(gal,gadot). % Nova inserção
% Consulta:
% mae(gal,gadot) --> true

% Regras
gerou(X,Y) :- pai(X,Y); mae(X,Y).
irmaos(X,Y) :- gerou(Z,X), gerou(Z,Y), X\=Y.
irmao(X,Y) :- homem(X), irmaos(X,Y).
irma(X,Y) :- mulher(X), irmaos(X,Y).
filhos(X,Y) :- gerou(Y,X), X\=Y.
filho(X,Y) :- homem(X), filhos(X,Y).
filha(X,Y) :- mulher(X), filhos(X,Y).
tios(X,Y) :- irmaos(X,Z), gerou(Z,Y), X\=Y.
tio(X,Y) :- homem(X), tios(X,Y).
tia(X,Y) :- mulher(X), tios(X,Y).
primos(X,Y) :- tios(Z,X), gerou(Z,Y), X\=Y.
primo(X,Y) :- homem(X), primos(X,Y).
prima(X,Y) :- mulher(X), primos(X,Y).
avos(X,Y) :- gerou(X,Z), gerou(Z,Y), X\=Y.
avô(X,Y) :- homem(X), avos(X,Y).
avó(X,Y) :- mulher(X), avos(X,Y).
bisos(X,Y) :- gerou(X,Z), avos(Z,Y), X\=Y.
biso(X,Y) :- homem(X), bisos(X,Y).
bisa(X,Y) :- mulher(X), bisos(X,Y).

% Consultas:
% gerou(X,eva) --> ivo, ana
% gerou(eva,Y) --> noe
% irmao(X,clo) --> ary, rai
% irma(ana,gil) --> true
% filho(X,eva) --> noe
% filha(X,eva) --> false
% tio(X,rai) --> false
% tia(X,rai) --> ana
% primo(X,rai) --> false
% prima(X,rai) --> eva
% avô(X,rai) --> jose, willy
% avó(X,rai) --> joana, camelia
% biso(X,noe) --> jose, simao, willy
% bisa(X,noe) --> joana, matilde, camelia
