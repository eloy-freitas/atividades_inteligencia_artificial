homem(alfredo).
homem(jose).
homem(wagner).
mulher(suse).
mulher(joana).
mulher(ingred).
pai(alfredo, suse).
pai(alfredo, joana).
pai(alfredo, wagner).
pai(jose, alfredo).
casado(alfredo, ingred).

mae(Mae, Filho) :- pai(Pai, Filho), casado(Pai, Mae).

irmao(Filho1, Filho2) :- 
    (
        (pai(Pai, Filho1), pai(Pai, Filho2))
        , (mae(Mae, Filho1), mae(Mae, Filho2))
    ) 
    , Filho1 \= Filho2
    , homem(Filho2).

irma(Filho1, Filho2) :- 
    (
        (pai(Pai, Filho1), pai(Pai, Filho2))
        , (mae(Mae, Filho1), mae(Mae, Filho2))
    ) 
    , Filho1 \= Filho2
    , mulher(Filho2).