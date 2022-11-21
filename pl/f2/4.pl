% a) | ?- [a | [b, c, d] ] = [a, b, c, d]
% true.

% b) | ?- [a | b, c, d ] = [a, b, c, d]
% false.

% c) | ?- [a | [b | [c, d] ] ] = [a, b, c, d]
% true.

% d) | ?- [H|T] = [pfl, lbaw, redes, ltw]
% true.

% e) | ?- [H|T] = [lbaw, ltw]
% true.

% f) | ?- [H|T] = [leic]
% true.

% g) | ?- [H|T] = []
% false.

% h) | ?- [H|T] = [leic, [pfl, ltw, lbaw, redes] ]
% true.

% i) | ?- [H|T] = [leic, Two]
% true.

% j) | ?- [Inst, feup] = [gram, LEIC]
% true.

% k) | ?- [One, Two | Tail] = [1, 2, 3, 4]
% true.

% l) | ?- [One, Two | Tail] = [leic | Rest]
% true.
