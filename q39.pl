% Q39: Backward chaining
fact(fever).
fact(cough).

% A rule head is true when all listed conditions can be proved.
rule(flu, [fever, cough]).
rule(ill, [flu]).
rule(need_rest, [ill]).

prove(X) :-
    fact(X).
prove(X) :-
    rule(X, Conditions),
    prove_all(Conditions).

prove_all([]).
prove_all([H|T]) :-
    prove(H),
    prove_all(T).

% Queries:
% ?- prove(flu).        % true.
% ?- prove(need_rest).  % true.
% ?- prove(headache).   % false.
