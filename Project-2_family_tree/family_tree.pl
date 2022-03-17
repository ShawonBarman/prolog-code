%%%%% facts %%%%%
%%%%% Level 1 %%%%%
%%%%% Debashish is the father of Bipin %%%%%
father(debashish, bipin).

%%%%% Madhivi is the mother of Bipin %%%%%
mother(madhuvi, bipin).

%%%%% Level 2 %%%%%
%%%%% Bipin is the father of Gobindro %%%%%
father(bipin, gobindro).

%%%%% Purnima is the mother of Gobindro %%%%%
mother(purnima, gobindro).

%%%%% Bipin is the father of Purno %%%%%
father(bipin, purno).

%%%%% Purnima is the mother of Purno %%%%%
mother(purnima, purno).

%%%%% Level 3 %%%%%
%%%%% Gobindro is the father of Kartik %%%%%
father(gobindro, kartik).

%%%%% Mala is the mother of Kartik %%%%%
mother(mala, kartik).

%%%%% Gobindro is the father of Gupinad %%%%%
father(gobindro, gupinad).

%%%%% Mala is the mother of Gupinad %%%%%
mother(mala, gupinad).

%%%%% Purno is the mother of Mona %%%%%
mother(purno, mona).

%%%%% Gautam is the father of Mona %%%%%
father(gautam, mona).

%%%%% Level 4 %%%%%
%%%%% Kartik is the father of Riya %%%%%
father(kartik, riya).

%%%%% Depeeka is the mother of Riya %%%%%
mother(depeeka, riya).

%%%%% Gupinad is the father of Ajit %%%%%
father(gupinad, ajit).

%%%%% Komola is the mother of Ajit %%%%%
mother(komola, ajit).

%%%%% Gupinad is the father of Anil %%%%%
father(gupinad, anil).

%%%%% Komola is the mother of Anil %%%%%
mother(komola, anil).

%%%%% Gupinad is the father of Khusi %%%%%
father(gupinad, khusi).

%%%%% Komola is the mother of Khusi %%%%%
mother(komola, khusi).

%%%%% Level 5 %%%%%
%%%%% Riya is the mother of Akash %%%%%
mother(riya, akash).

%%%%% Biplop is the father of Akash %%%%%
father(biplop, akash).

%%%%% Ajit is the father of Avijit %%%%%
father(ajit, avijit).

%%%%% Onima is the mother of Avijit %%%%%
mother(onima, avijit).

%%%%% Ajit is the father of Joya %%%%%
father(ajit, joya).

%%%%% Onima is the mother of Joya %%%%%
mother(onima, joya).



%%%%% Anil is the father of Piu %%%%%
father(anil, piu).

%%%%% Chandana is the mother of Piu %%%%%
mother(chandana, piu).

%%%%% Khusi is the mother of Shuvo %%%%%
mother(khusi, shuvo).

%%%%% Dipu is the father of Shuvo %%%%%
father(dipu, shuvo).

%%%%% Anil is the father of Shawon %%%%%
father(anil, shawon).

%%%%% Chandana is the mother of Shawon %%%%%
mother(chandana, shawon).


%%%%% rules %%%%%


%%%%% parent rule %%%%%

parent(X, Y):-
    mother(X, Y) ; father(X, Y).


%%%%% sibling rule %%%%%

sibling(X, Y):-
    father(Z, X), father(Z, Y), X \== Y.

%The “\==” sign is used to determine not equal terms. This operator is mostly used for numerical and character values.


%%%%% grandparent rule %%%%%

grandparent(X, Y):-
    parent(A, Y), parent(X, A).


%%%%% greatgrandparent rule %%%%%

greatgrandparent(X, Y):-
    parent(A, Y), parent(B, A), parent(X, B).


%%%%% greatgreatgrandparent rule %%%%%

greatgreatgrandparent(X, Y):-
    parent(A, Y), parent(B, A), parent(C, B), parent(X, C).


%%%%% greatgreatgreatgrandparent rule %%%%%

greatgreatgreatgrandparent(X, Y):-
    parent(A, Y), parent(B, A), parent(C, B), parent(D, C), parent(X, D).


%%%%% uncle rule %%%%%

uncle(X, Y):-
    father(Z, Y), father(A, Z), father(A, X), Z \== X.


%%%%% first cousin rule %%%%%
%%%%% X is the first cousin of Y if the grandparent of X and the grandparent of Y are the same people OR if the parent of X and the parent of Y are the sibling %%%%%

firstcousin(X, Y):-
    parent(Z, X), parent(W, Y), sibling(Z, W), X \== Y.


%%%%% second cousin rule %%%%%
%%%%% X is the second cousin of Y if the greatgrandparent of X and the greatgrandparent of Y are the same people %%%%%

secondcousin(X, Y):-
    greatgrandparent(Z, X), greatgrandparent(Z, Y), \+firstcousin(X, Y), \+sibling(X, Y), X \== Y.


%%%%% third cousin rule %%%%%
%%%%% X is the third cousin of Y if the greatgreatgrandparent of X and the greatgreatgrandparent of Y are the same people %%%%%

thirdcousin(X, Y):-
    greatgreatgrandparent(Z, X), greatgreatgrandparent(Z, Y), \+firstcousin(X, Y), \+secondcousin(X, Y), \+sibling(X, Y), X \== Y.


%%%%% first cousin once removed rule %%%%%
%%%%% X is the first cousin once removed of Y if the grandparent of X and the greatgrandparent of Y are the same people OR vice versa %%%%%

firstcousin_onceremoved(X, Y):-
    parent(Z, Y),
    firstcousin(X, Z).

firstcousin_onceremoved(X, Y):-
    parent(Z, X),
    firstcousin(Z, Y).


%%%%% first cousin twice removed rule %%%%%
%%%%% X is the first cousin twice removed of Y if the grandparent of X and the greatgreatgrandparent of Y are the same people OR vice versa %%%%%

firstcousin_twiceremoved(X, Y):-
    firstcousin(X, Z),
    grandparent(Z, Y).

firstcousin_twiceremoved(X, Y):-
    firstcousin(Z, Y),
    grandparent(Z, X).


%%%%% second cousin once removed rule %%%%%
%%%%% X is the second cousin once removed of Y if the greatgrandparent of X and the greatgreatgrandparent of Y are the same people OR vice versa %%%%%

secondcousin_onceremoved(X, Y):-
    parent(Z, Y),
    secondcousin(X, Z).

secondcousin_onceremoved(X, Y):-
    parent(Z, X),
    secondcousin(Z, Y).


%%%%% second cousin twice removed rule %%%%%
%%%%% X is the second cousin twice removed of Y if the greatgrandparent of X and the greatgreatgreatgrandparent of Y are the same people OR vice versa %%%%%

secondcousin_twiceremoved(X, Y):-
    grandparent(Z, Y),
    secondcousin(X, Z).

secondcousin_twiceremoved(X, Y):-
    grandparent(Z, X),
    secondcousin(Z, Y).


%%%%% third cousin once removed rule %%%%%
%%%%% X is the third cousin once removed of Y if the greatgrandparent of X and the greatgreatgreatgrandparent of Y are the same people OR vice versa %%%%%

thirdcousin_onceremoved(X, Y):-
    parent(Z, Y),
    thirdcousin(X, Z).
thirdcousin_onceremoved(X, Y):-
    parent(Z, X),
    thirdcousin(Z, Y).


%%%%% third cousin twice removed rule %%%%%
%%%%% X is the third cousin twice removed of Y if the greatgreatgrandparent of X and the greatgreatgreatgreatgrandparent of Y are the same people OR vice versa %%%%%

thirdcousin_twiceremoved(X, Y):-
    grandparent(Z, Y),
    thirdcousin(X, Z).
thirdcousin_twiceremoved(X, Y):-
    grandparent(Z, X),
    thirdcousin(Z, Y).


% Recursion best case %
pred(X, Z):-
	father(X, Z).

% Recursion worst case %
pred(X, Z):-
	father(X, Y), pred(Y, Z).