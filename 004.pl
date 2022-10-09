% Unifica cola
cola([_|Tail],Tail).

% Gets the last element in the list
ultimo([X],X):-!.
ultimo([_|Tail],X):-
    ultimo(Tail,X).

% Prints list elements
showMember([]).
showMember([Head|Tail]):-
    write(Head),nl,
    showMember(Tail).

% Delete a list element
borrar([Target|Tail], Target, Tail):-!.

borrar([Head|Tail], Target, [Head|Output]):-
    borrar(Tail, Target, Output).