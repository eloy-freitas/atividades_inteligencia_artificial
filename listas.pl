% inverter lista

% base:
inverte([], L, L).
% passo:
inverte([A|B], Aux, Result) :- inverte(B, [A|Aux], Result).

% exercicio 5

% base:
membro([A|_], Elem) :- A = Elem, !.
% passo:
membro([_|R], Elem) :- membro(R, Elem). 