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
% ?- contarElemDaLista([3,2,3,1,3,8,3], 3, Qnt).
% Qnt = 4.

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

