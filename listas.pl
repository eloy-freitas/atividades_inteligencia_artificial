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


% exercicio 11

% removerItemDaLista(Lista, Item, NovaLista).
% ?- removerItemDaLista([3,5,8,2,4,9], 4, NovaLista). -> NovaLista = [3,5,8,2,9].

% base
removerItemDaLista(Lista, Item, NovaLista) :-
    removerItemDaLista(Lista, Item, NovaLista, []).

% passo
removerItemDaLista([], _, Controle, Controle).

removerItemDaLista([H|T], Item, NovaLista, Controle) :-
    H = Item,
    removerItemDaLista(T, Item, NovaLista, Controle).

removerItemDaLista([H|T], Item, NovaLista, Controle) :-
    Aux = [H|Controle],
    removerItemDaLista(T, Item, NovaLista, Aux).