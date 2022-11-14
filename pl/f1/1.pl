female('Grace').
female('Haley').
female('Poppy').
female('Claire').
female('DeDe').
female('Gloria').
female('Barb').
female('Cameron').
female('Pameron').
female('Alex').
female('Lily').

male('Frank').
male('Phil').
male('Dylan').
male('George').
male('Jay').
male('Javier').
male('Merle').
male('Mitchell').
male('Joe').
male('Manny').
male('Bo').
male('Luke').
male('Rexford').
male('Calhoun').

parent('Grace', 'Phil').
parent('Frank', 'Phil').
parent('Phil', 'Haley').
parent('Claire', 'Haley').
parent('Phil', 'Alex').
parent('Claire', 'Alex').
parent('Phil', 'Luke').
parent('Claire', 'Luke').
parent('Dylan', 'George').
parent('Haley', 'George').
parent('Dylan', 'Poppy').
parent('Haley', 'Poppy').
parent('DeDe', 'Claire').
parent('Jay', 'Claire').
parent('DeDe', 'Mitchell').
parent('Jay', 'Mitchell').
parent('Jay', 'Joe').
parent('Gloria', 'Joe').
parent('Javier', 'Manny').
parent('Gloria', 'Manny').
parent('Barb', 'Cameron').
parent('Merle', 'Cameron').
parent('Barb', 'Pameron').
parent('Merle', 'Pameron').
parent('Mitchell', 'Lily').
parent('Cameron', 'Lily').
parent('Mitchell', 'Rexford').
parent('Cameron', 'Rexford').
parent('Pameron', 'Calhoun').
parent('Bo', 'Calhoun').

married('Jay', 'Gloria', 2008).
married('Jay', 'DeDe', 1968).
divorced('Jay', 'DeDe', 2003).

father(F, C):-parent(F,C),
                male(F).

mother(F, C):-parent(F,C),
                female(F).

grandparent(G, C):-parent(G,F),
                    parent(F,C).

grandfather(G, C):-grandparent(G, C),
                    male(G).

grandmother(G, C):-grandparent(G, C),
                    female(G).

siblings(A, B):-father(F, A),
                father(F, B),
                mother(M, A),
                mother(M, B),
                A \= B.

halfSiblings(A, B):-parent(F, A),
                    parent(F, B),
                    parent(P, A),
                    \+ parent(P, B).

cousins(A, B):-parent(F, A),
               siblings(F, S),
               parent(S, B).

uncle(U, N):-parent(F, N),
             siblings(F, U),
             male(U).
