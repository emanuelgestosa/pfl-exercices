% a) Implemente o predicado list_size(+List, ?Size) que determina o tamanho de List.

list_size([], 0).
list_size([_ | T], Size):-list_size(T, Size1),
                          Size is Size1 + 1.

% b) Implemente o predicado list_sum(+List, ?Sum) que soma os valores contidos em List.
list_sum([], 0).
list_sum([V | T], Sum):-list_sum(T, Sum1),
                        Sum is Sum1 + V.

% c) Implemente o predicado list_prod(+List, ?Prod) que multiplica os valores contidos em List.
list_prod([], 1).
list_prod([V | T], Prod):-list_prod(T, Prod1),
                        Prod is Prod1 * V.

% d) Implemente o predicado inner_product (+List1, +List2, ?Result) que calcula o produto
% interno de dois vetores (representados como listas de inteiros, do mesmo tamanho).
inner_product([], _, 0).
inner_product(_, [], 0).
inner_product([V1 | T1], [V2 | T2], Result):-inner_product(T1, T2, Result1),
                                             Result is Result1 + V1 * V2.

% e) Implemente o predicado count(+Elem, +List, ?N), que conta o número de ocorrências de
% Elem em List, colocando o resultado em 
count(_, [], 0).
count(Elem, [Elem | T], Result):-count(Elem, T, Result1),
                                 Result is Result1 + 1.

count(Elem, [V | T], Result):-Elem =\= V,
                              count(Elem, T, Result).
