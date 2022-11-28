% a) Implemente o predicado invert(+List1, ?List2), que inverte a lista List1.
myappend([], L2, L2).
myappend([H | T], L2, [H | T3]):-myappend(T, L2, T3).

invert([], []).
invert([H | T], List2):-invert(T, List2new),
                        myappend(List2new, [H], List2).

% b) Implemente o predicado del_one(+Elem, +List1, ?List2), que apaga uma ocorrência de
% Elem de List1, resultando em List2.
del_one(_, [], []).
del_one(Elem, [Elem | T], T).
del_one(Elem, [V | T], List2):-Elem =\= V,
                               del_one(Elem, T, List2new),
                               myappend([V], List2new, List2).

% c) Implemente o predicado del_all(+Elem, +List1, ?List2), que apaga todas as ocorrências de
% Elem de List1, resultando em List2.
del_all(_, [], []).
del_all(Elem, [Elem | T], List2):-del_all(Elem, T, List2).

del_all(Elem, [V | T], List2):-Elem =\= V,
                               del_all(Elem, T, List2new),
                               myappend([V], List2new, List2).

% d) Implemente o predicado del_all_list(+ListElems, +List1, ?List2), que apaga de List1 todas
% as ocorrências de todos os elementos de ListElems, resultando em List2.
del_all_list([], List1, List1).
del_all_list(_, [], []).
del_all_list([H | T], List1, List2):-del_all(H, List1, List1new),
                                     del_all_list(T, List1new, List2).

% e) Implemente o predicado del_dups(+List1, ?List2), que elimina valores repetidos de List1.
del_dups([], []).
del_dups([H | T], [H | List2]):-del_all(H, T, List2new),
                                del_dups(List2new, List2).

% f) Implemente o predicado list_perm (+L1, +L2) que sucede se L2 for uma permutação de L1.
contains(Elem, [Elem | _]).
contains(Elem, [H | T]):-Elem =\= H,
                         contains(Elem, T).

list_perm([],[]).
list_perm([H | T], L2):-contains(H, L2),
                        del_one(H, L2, L2new),
                        list_perm(T, L2new).

% g) Implemente o predicado replicate(+Amount, +Elem, ?List) que gera uma lista com Amount
% repetições de Elem.
replicate(0, _, []).
replicate(Amount, Elem, [Elem | List]):-
    Amount1 is Amount - 1,
    replicate(Amount1, Elem, List).

% h) Implemente o predicado intersperse(+Elem, +List1, ?List2) que intercala Elem entre os
% elementos de List1, devolvendo o resultado em List2.
intersperse(_, [], []).
intersperse(_, [H], [H]).
intersperse(Elem, [H | T], [H, Elem | List2]):-
    intersperse(Elem, T, List2).

% i) Implemente o predicado insert_elem(+Index, +List1, +Elem, ?List2), que insere Elem em
% List1 no índice Index, daí resultando List2.
insert_elem(0, List1, Elem, [Elem | List1]).
insert_elem(Index, [], _, []):-Index =\= 0.
insert_elem(Index, [H | T], Elem, [H | List2]):-
    Index1 is Index - 1,
    insert_elem(Index1, T, Elem, List2).

% j) Implemente o predicado delete_elem(+Index, +List1, ?Elem, ?List2), que remove o
% elemento no índice Index de List1 (que é unificado com Elem), resultando em List2.
delete_elem(0, [H | T], Elem, T):-
    H = Elem.
delete_elem(0, [H | T], Elem, [H | T]):-
    H \= Elem.
delete_elem(Index, [H | T], Elem, [H | List2]):-
    Index1 is Index - 1,
    delete_elem(Index1, T, Elem, List2).

% k) Implemente o predicado replace(+List1, +Index, ?Old, +New, ?List2), que substitui o
% elemento Old, localizado no índice Index de List1, por New, resultando em List2.
replace([], _, _, _, []).
replace([Old | T], 0, Old, New, [New | T]).
replace([H | T], 0, Old, New, [H | T]):-
    Old \= New.
replace([H | T], Index, Old, New, [H | List2]):-
    Index1 is Index - 1,
    replace(T, Index1, Old, New, List2).
