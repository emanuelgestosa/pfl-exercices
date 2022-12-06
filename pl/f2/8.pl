% a) Implemente o predicado list_to(+N, ?List), que unifica List com uma lista com todos os
% números inteiros entre 1 e N.
list_to(1, [1]).
list_to(N, []) :-
    N < 1.
list_to(N, List) :-
    N > 1,
    N1 is N-1,
    list_to(N1, List1),
    append(List1, [N], List).

% b) Implemente o predicado list_from_to(+Inf, +Sup, ?List), que unifica List com uma lista
% com todos os inteiros entre Inf e Sup (ambos incluídos).
list_from_to(N, N, [N]).
list_from_to(Inf, Sup, List) :-
    Inf > Sup,
    list_from_to(Sup, Inf, List1),
    reverse(List1, List).
list_from_to(Inf, Sup, [Inf | List]) :-
    Inf < Sup,
    Inf1 is Inf + 1,
    list_from_to(Inf1, Sup, List).

% c) Implemente o predicado list_from_to_step(+Inf, +Step, +Sup, ?List), que unifica List com
% uma lista contendo os inteiros entre Inf e Sup, em incrementos de Step.
list_from_to_step(N, _, N, [N], _).
list_from_to_step(Inf, _, Sup, [], asc) :-
    Inf > Sup.
list_from_to_step(Inf, Step, Sup, [Inf | List], asc) :-
    Inf < Sup,
    Inf1 is Inf + Step,
    list_from_to_step(Inf1, Step, Sup, List, asc).
list_from_to_step(Inf, Step, Sup, List, desc) :-
    list_from_to_step(Sup, Step, Inf, List1, asc),
    reverse(List1, List).
list_from_to_step(N, _, N, [N]).
list_from_to_step(Inf, Step, Sup, List) :-
    Inf > Sup,
    list_from_to_step(Inf, Step, Sup, List, desc).
list_from_to_step(Inf, Step, Sup, List) :-
    Inf < Sup,
    list_from_to_step(Inf, Step, Sup, List, asc).

% d) Altere as soluções das duas alíneas anteriores para detetar os casos em que Inf é superior a
% Sup, devendo nesses casos devolver a lista com os elementos em ordem decrescente
% (sugestão: considere usar inversão de listas).

% e) Implemente o predicado primes(+N, ?List), que unifica List com uma lista contendo todos
% os números primos até N (sugestão: use o predicado isPrime, do exercício 1).
isPrime(X, I) :-
    I * I > X.
isPrime(X, I) :-
    I * I =< X,
    X mod I =\= 0,
    I1 is I + 1,
    isPrime(X, I1).
isPrime(1).
isPrime(X) :-
    X > 2,
    isPrime(X, 2).

primes(N, []) :-
    N < 1.
primes(N, List) :-
    N >= 1,
    isPrime(N),
    N1 is N-1,
    primes(N1, List1),
    append(List1, [N], List).
primes(N, List) :-
    N >= 1,
    \+isPrime(N),
    N1 is N-1,
    primes(N1, List).

% f) Implemente o predicado fibs(+N, ?List), que unifica List com uma lista com todos os
% números de Fibonacci de ordem 0 até N (sugestão: use o predicado do exercício 1).
fibonacci(0, 1).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

fibs(N, []) :-
    N < 0.
fibs(N, List) :-
    N >= 0,
    fibonacci(N, F),
    N1 is N - 1,
    fibs(N1, List1),
    append(List1, [F], List).
