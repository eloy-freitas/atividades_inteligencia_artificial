% inverter lista

% base:
inverte([], L, L).
% passo:
inverte([A|B], Aux, Result) :- inverte(B, [A|Aux], Result).

% exercicio 6

% base:
membro([A|_], Elem) :- A = Elem, !.
% passo:
membro([_|R], Elem) :- membro(R, Elem). 

% exercicio 7

% base:
itemDaLista([H|_], H, 0). 
% passo
itemDaLista([_|T], Elem, N) :-
    Aux is N - 1,
    itemDaLista(T, Elem, Aux).

% contarElemDaLista(Lista, Elem, Qnt).
% ?- contarElemDaLista([3,2,3,1,3,8,3], 3, Qnt). -> Qnt = 4.


% exercicio 8

%base
% base:
contarElemDaLista(Lista, Elem, Qnt) :- 
    contarElemDaLista(Lista, Elem, Qnt, 0). 

% passo
contarElemDaLista([], _, Count, Count) :- !.

contarElemDaLista([H|T], Elem, Qnt, Count) :- 
    H = Elem,
    Aux is Count + 1,
    contarElemDaLista(T, Elem, Qnt, Aux).

contarElemDaLista([_|T], Elem, Qnt, Count) :- 
    contarElemDaLista(T, Elem, Qnt, Count).

% exercicio 9

% Encontrar números consecutivos em uma lista. Ex:
% consecutivosNaLista(Lista, Elem).
% ?- consecutivosNaLista([1,2,3,3,4], 3). -> true.

% base
consecutivosNaLista([Elem, Elem|_], Elem).

% passo
consecutivosNaLista([_|T], Elem) :-
    consecutivosNaLista(T, Elem).

% exercicio 10




% exercicio 11
% Contar o tamanho da lista. Ex:
% tamLista(Lista, Tam).
% ?- tamLista([3,5,8,2,4,9], Tam). -> Tam = 6.

% base 
tamLista(Lista, Tam) :-
    tamLista(Lista, Tam, 0).

% passo
tamLista([], Count, Count).

tamLista([_|T], Tam, Count) :-
    Aux is Count + 1,
    tamLista(T, Tam, Aux).


% exercicio 12

% removerItemDaLista(Lista, Item, NovaLista).
% ?- removerItemDaLista([3,5,8,2,4,9], 4, NovaLista). -> NovaLista = [3,5,8,2,9].

% base
removerItemDaLista([], _, []).

% passo
removerItemDaLista([H|T], Item, NovaLista) :-
    H = Item,
    removerItemDaLista(T, Item, NovaLista).

removerItemDaLista([H|T], Item, NovaLista) :-
    removerItemDaLista(T, Item, Aux),
    NovaLista = [H|Aux].

% exercicio 13
% ultimoElemDaLista(Lista, Elem).
% ?- ultimoElemDaLista([3,2,3,1,3,8], Elem). -> Elem = 8.

% base
ultimoElemDaLista([H|[]], H).

ultimoElemDaLista([_|T], Elem) :-
    ultimoElemDaLista(T, Elem).

% exercicio 14

% maiorElemDaLista(Lista, Elem).
% ?- maiorElemDaLista([3,2,3,1,3,8], Elem). -> Elem = 8.

% base
maiorElemDaLista([H|T], Elem) :- 
    maiorElemDaLista([H|T], Elem, H).

% passo
maiorElemDaLista([], Aux1, Aux1).

maiorElemDaLista([H|T], Elem, Aux1) :-
    H >= Aux1,
    Aux2 is H,
    maiorElemDaLista(T, Elem, Aux2). 

maiorElemDaLista([_|T], Elem, Aux1) :-
    maiorElemDaLista(T, Elem, Aux1). 


% exercicio 15

% menorElemDaLista(Lista, Elem).
% ?- menorElemDaLista([3,2,3,1,3,8], Elem). -> Elem = 1.


% base
menorElemDaLista([H|T], Elem) :- 
    menorElemDaLista([H|T], Elem, H).

% passo
menorElemDaLista([], Aux1, Aux1).

menorElemDaLista([H|T], Elem, Aux1) :-
    H =< Aux1,
    Aux2 is H,
    menorElemDaLista(T, Elem, Aux2). 

menorElemDaLista([_|T], Elem, Aux1) :-
    menorElemDaLista(T, Elem, Aux1). 

