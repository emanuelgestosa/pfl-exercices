% a) Implemente o predicado fatorial(+N, ?F), que calcula o fatorial de um
% número N.
fatorial(1, 1).
fatorial(N, F):-N > 1,
                N1 is N - 1,
                fatorial(N1, F1),
                F is F1 * N.

% b) Implemente o predicado somaRec(+N, ?Sum), uma versão recursiva do cálculo
% do somatório dos números de 1 até N.
somaRec(1, 1).
somaRec(N, Sum):-N > 1,
                 N1 is N - 1,
                 somaRec(N1, Sum1),
                 Sum is Sum1 + N.

% c) Implemente o predicado fibonacci(+N, ?F), que calcula o número de
% fibonacci de ordem N
fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(N, F):-N > 2,
                 N1 is N - 1,
                 N2 is N - 2,
                 fibonacci(N1, F1),
                 fibonacci(N2, F2),
                 F is F1 + F2.

% d) Implemente o predicado isPrime(+X), que determina se X é um número primo.
% Sugestão: um número é primo se for divisível apenas por si próprio e por 1.
isPrimeAux(X, I):-I * I > X.
isPrimeAux(X, I):-I * I =< X,
                 X mod I =\= 0,
                 I1 is I + 1,
                 isPrimeAux(X, I1).
isPrime(1).
isPrime(X):-X > 2,
            isPrimeAux(X, 2).
