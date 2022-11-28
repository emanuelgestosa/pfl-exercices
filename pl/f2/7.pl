% a) Implemente o predicado list_append(?L1, ?L2, ?L3) em que L3 é constituída pela
% concatenação das listas L1 e L2.
list_append([], L2, L2).
list_append([H | T], L2, [H | T3]):-list_append(T, L2, T3).

% b) Implemente o predicado list_member(?Elem, ?List) que verifica se Elem é membro de Lista
% usando unicamente o predicado append uma só vez.
list_member(Elem, L):-list_append(_, [Elem | _], L).

% c) Implemente o predicado list_last(+List, ?Last) que unifica Last com o último elemento de
% List, usando unicamente o predicado append uma só vez.
list_last(L, Last):-list_append(_, [Last], L).

% d) Implemente o predicado list_nth(?N, ?List, ?Elem), que unifica Elem com o N-ésimo
% elemento de Lista, usando apenas os predicados append e length.
list_nth(N, List, Elem):-
    list_append(L1, [Elem | _], List),
    length(L1, N).

% e) Implemente o predicado list_append(+ListOfLists, ?List) que concatena uma lista de listas.
list_append([], []).
list_append([L], L).
list_append([H1, H2 | T], List):-
    list_append(H1, H2, List1),
    list_append([List1 | T], List).

% f) Implemente o predicado list_del(+List, +Elem, ?Res), que elimina uma ocorrência de Elem
% de List, unificando o resultado com Res, usando apenas o predicado append duas vezes.
list_del(List, Elem, Res):-
    list_append(L1, [Elem | L2], List),
    list_append(L1, L2, Res).

% g) Implemente o predicado list_before(?First, ?Second, ?List) que sucede se os dois primeiros
% argumentos forem membros de List, e First ocorrer antes de Second, usando unicamente o
% predicado append duas vezes.
list_before(First, Second, List):-
    list_append(List1, [Second | _], List),
    list_append(_, [First | _], List1).

% h) Implemente o predicado list_replace_one(+X, +Y, +List1, ?List2) que substitui uma
% ocorrência de X em List1 por Y, daí resultando List2, usando unicamente o predicado
% append duas vezes.
list_replace_one(X, Y, List1, List2):-
    list_append(L1, [X | L2], List1),
    list_append(L1, [Y | L2], List2).

% i) Implemente o predicado list_repeated(+X, +List) que sucede se X ocorrer repetidamente
% (pelo menos duas vezes) em List, usando unicamente o predicado append duas vezes.
list_repeated(X, List):-
    list_append(List1, [X | _], List),
    list_append(_, [X | _], List1).

% j) Implemente o predicado list_slice(+List1, +Index, +Size, ?List2), que extrai uma fatia de
% tamanho Size de List1 começando no índice Index, resultando em List2, usando apenas os
% predicados append e length.
list_slice(List1, Index, Size, List2):-
    list_append(L1, L2, List1),
    length(L1, Index),
    list_append(List2, _, L2),
    length(List2, Size).

% k) Implemente o predicado list_shift_rotate(+List1, +N, ?List2), que rode List1 N elementos
% para a esquerda, resultando em List2, usando apenas os predicados append e length.
list_shift_rotate(List1, N, List2):-
    list_append(H, T, List1),
    length(H, N),
    list_append(T, H, List2).
