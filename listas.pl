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
itemDaLista([_|T], H, N) :-
    Aux is N - 1,
    itemDaLista(T, H, Aux).


buscaItem([A|_], Elem, 1, 1) :-
    Elem is A.

% passo:
buscaItem([_|R], Elem, N, Aux):-
    Aux > 1,
    Aux is N - 1,
    buscaItem(R, Elem, N, Aux).



