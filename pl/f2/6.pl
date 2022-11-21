% a) Implemente o predicado invert(+List1, ?List2), que inverte a lista List1.
myappend([], L2, L2).
myappend([H|T], L2, [H|T3]):-myappend(T, L2, T3).

invert([], []).
invert([H | T], List2):-invert(T, List2new),
                        myappend(List2new, [H], List2).
