% Indique, justificando, se cada um dos cuts presentes no seguinte código é verde ou vermelho.

% immature(X):- adult(X), !, fail.
% immature(X).
% red, otherwise it would always return true

% adult(X):- person(X), !, age(X, N), N >=18.
% adult(X):- turtle(X), !, age(X, N), N >=50.
% adult(X):- spider(X), !, age(X, N), N>=1.
% adult(X):- bat(X), !, age(X, N), N >=5.
% green, used for performance
