%%%%% prolog code e rules e jodi or bah ; use kori taile take disjunction bole %%%%%
%%%%% prolog code e rules e jodi and bah , use kori taile take conjugation bole %%%%%
%%%%% Disjunction %%%%%
%%%%% A person can be assumed happy in either of following conditions: If he is healthy or if he is wealthy or if he has friends. %%%%%

%%%%% facts %%%%%
healthy(rifat).
wealthy(sogib).
hasfriend(nahar).

%%%%% rules %%%%%
happy(X):-
	healthy(X);
	wealthy(X);
	hasfriend(X).

%%%%% conjugation %%%%%
%%%%% Two person can be friends if they likes each other %%%%%

%%%%% facts %%%%%
likes(sogib, hasin).
likes(rifat, sogib).
likes(sogib, rifat).
likes(hasin, rifat).

%%%%% rules %%%%%
friends(X, Y):-
	likes(X, Y), likes(Y, X).