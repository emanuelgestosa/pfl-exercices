cargo(tecnico, eleuterio).
cargo(tecnico, juvenaldo).
cargo(analista, leonilde).
cargo(analista, marciliano).
cargo(engenheiro, osvaldo).
cargo(engenheiro, porfirio).
cargo(engenheiro, reginaldo).
cargo(supervisor, sisnando).
cargo(supervisor_chefe, gertrudes).
cargo(secretaria_exec, felismina).
cargo(diretor, asdrubal).
chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, diretor).
chefiado_por(secretaria_exec, diretor).

% a)
% i.   Cargo que chefia um analista, se o sisnando tiver este cargo.
% ii.  Cargo que chefia o cargo que chefia um tecnico.
% iii. Pessoas que são chefiadas por um supervisor.
% iv.  Cargo chefiado por um diretor, se a felismina não tiver este cargo.

% b)
% i.   X - supervisor
% ii.  X - engenheiro, Y - supervisor
% iii. J - analista, P - leonilde
% iv.  P - supervisor_chefe

% c)
% i. A pessoa X é chefe da pessoa Y?
chefe(X, Y):-cargo(CX, X),
             cargo(CY, Y),
             chefiado_por(CY, CX).

% ii. As pessoas X e Y são chefiadas por pessoas com o mesmo cargo?
mesmo_cargo_chefe(X, Y):-chefe(XC, X),
                         chefe(YC, Y),
                         cargo(C, XC),
                         cargo(C, YC).

% iii. Quais os cargos que não são responsáveis por outros cargos?
nao_responsaveis(C):-cargo(C, _),
                     \+chefiado_por(_, C).

% iv. Quem são as pessoas que não são chefiadas por ninguém?
nao_chefiadas(P):-cargo(C, P),
                  \+chefiado_por(C, _).
