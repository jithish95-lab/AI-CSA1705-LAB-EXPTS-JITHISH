% Q31: Check whether a bird can fly
bird(parrot).
bird(eagle).
bird(pigeon).
bird(sparrow).
bird(ostrich).
bird(penguin).

cannot_fly(ostrich).
cannot_fly(penguin).

can_fly(Bird) :-
    bird(Bird),
    \+ cannot_fly(Bird).

% Queries:
% ?- can_fly(parrot).   % true.
% ?- can_fly(penguin).  % false.
% ?- can_fly(ostrich).  % false.
