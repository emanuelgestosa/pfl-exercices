% member(T, P) - P is a pilot for team T
member('Breitling', 'Lamb').
member('Red Bull', 'Besebyei').
member('Red Bull', 'Chambliss').
member('Mediterranean Racing Team', 'MacLean').
member('Cobra', 'Mangold').
member('Matador', 'Jones').
member('Matador', 'Bonhomme').

% plane(A, P) - Plane A is piloted by pilot P
plane('MX2', 'Lamb').
plane('Edge540', 'Besebyei').
plane('Edge540', 'Chambliss').
plane('Edge540', 'MacLean').
plane('Edge540', 'Mangold').
plane('Edge540', 'Jones').
plane('Edge540', 'Bonhomme').

% winner(C, P) - Pilot P won at circuit C
winner('Porto', 'Jones').
winner('Budapeste', 'Mangold').
winner('Instanbul', 'Mangold').

% winnerTeam(C, T) - Team T won at circuit C
winnerTeam(C, T):-member(T, P),
                  winner(C, P).

% gates(C, G) - Circuit C has G gates
gates('Instanbul', 9).
gates('Budapeste', 6).
gates('Porto', 5).
