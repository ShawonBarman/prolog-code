members(Item, [Item | Rest]).

members(Item, [DisregardHead | Tail]:-
	member(Item, Tail).

%app([Head|Tail], List2, [Head|Result]):-
	%append(Tail, List2, Result).

append([Head|Tail], List2, List3, [Head|Result2]):- 
	append(Tail, List2,Result1), append(Result1,List3,Result2).