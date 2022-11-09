leciona('Algoritmos', 'Adalberto').
leciona('Bases de Dados', 'Bernardete').
leciona('Compiladores', 'Capitolino').
leciona('Estatística', 'Diógenes').
leciona('Redes', 'Ermelinda').

frequenta('Algoritmos', 'Alberto').
frequenta('Algoritmos', 'Bruna').
frequenta('Algoritmos', 'Cristina').
frequenta('Algoritmos', 'Diogo').
frequenta('Algoritmos', 'Eduarda').
frequenta('Bases de Dados', 'António').
frequenta('Bases de Dados', 'Bruno').
frequenta('Bases de Dados', 'Cristina').
frequenta('Bases de Dados', 'Duarte').
frequenta('Bases de Dados', 'Eduardo').
frequenta('Compiladores', 'Alberto').
frequenta('Compiladores', 'Bernardo').
frequenta('Compiladores', 'Clara').
frequenta('Compiladores', 'Diana').
frequenta('Compiladores', 'Eurico').
frequenta('Estatística', 'António').
frequenta('Estatística', 'Bruna').
frequenta('Estatística', 'Cláudio').
frequenta('Estatística', 'Duarte').
frequenta('Estatística', 'Eva').
frequenta('Redes', 'Álvaro').
frequenta('Redes', 'Beatriz').
frequenta('Redes', 'Cláudio').
frequenta('Redes', 'Diana').
frequenta('Redes', 'Eduardo').

frequenta2(A):-frequenta(U1, A),
               frequenta(U2, A),
               U1 \= U2.

aluno(A, P):-frequenta(U, A),
             leciona(U, P).

aluno2(A, P1, P2):-aluno(A, P1),
                   aluno(A, P2).

colega(A, B):-leciona(_, A),
              leciona(_, B),
              A \= B.
colega(A, B):-frequenta(U, A),
              frequenta(U, B),
              A \= B.
