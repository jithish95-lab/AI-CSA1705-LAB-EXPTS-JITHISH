% Facts
man(marcus).
pompeian(marcus).
ruler(caesar).
attempt(marcus, caesar).

% Rules
roman(X) :- pompeian(X).

person(X) :- man(X).

not_loyal(X, Y) :-
    attempt(X, Y),
    ruler(Y).

hates(X, caesar) :-
    roman(X),
    not_loyal(X, caesar).