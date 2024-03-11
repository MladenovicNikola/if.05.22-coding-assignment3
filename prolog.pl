l = [a,b,c,d];

prepend(X, l, [X|l]).

addElement(X, [], [X]).
addElement(X, [H|T], [H|NewTail]) :-
    addElement(X, T, NewTail).

list_length([],0).
list_length([_|T],N) :- list_length(T,N1), N is N1 + 1.

remove(X, [X|T], T).
remove(X, [X|H], [H|shorterList]) :- remove(X,T,shorterList)