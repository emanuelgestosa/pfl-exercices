% Considere o seguinte código:
s(1).
s(2):- !.
s(3).

% a) | ?- s(X).
% X = 1; X = 2

% b) | ?- s(X), s(Y).
% X = 1, Y = 1; 
% X = 1, Y = 2; 
% X = 2, Y = 1; 
% X = 2, Y = 2; 

% c) | ?- s(X), !, s(Y).
% X = 1, Y = 1; 
% X = 1, Y = 2; 
