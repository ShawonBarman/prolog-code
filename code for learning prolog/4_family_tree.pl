%%%%% facts %%%%%
%%%%% Anil is the father of Shawon %%%%%
father(anil, shawon).

%%%%% Anil is the father of Piu %%%%%
father(anil, piu).

%%%%% Chandana is the mother of Shawon %%%%%
mother(chandana, shawon).

%%%%% Chandana is the mother of Piu %%%%%
mother(chandana, piu).

%%%%% Gupinad is the father of Anil %%%%%
father(gupinad, anil).

%%%%% Purnima is the mother of Anil %%%%%
mother(purnima, anil).

%%%%% Rule %%%%%
%%%%% Anil and Chandana is parent of Shawon if Anil is the father of Shawon or Chandana is the mother of Shawon. %%%%%
%%%%% Anil and Chandana is parent of Piu if Anil is the father of Piu or Chandana is the mother of Piu. %%%%%
%%%%% Shawon is the brother of Piu if Anil and Chandana is the parent of Piu and also Anil and Chandana is the parent of Shawon. %%%%%
%%%%% Gupinad is a grandfather of Shawon if Anil is a parent of Shawon and Gupinad is a father of Anil. %%%%%
%%%%% Gupinad is a grandfather of Piu if Anil is a parent of Piu and Gupinad is a father of Anil. %%%%%
%%%%% Gupinad is a grandmother of Shawon if Anil is a parent of Shawon and Purnima is a mother of Anil. %%%%%
%%%%% Gupinad is a grandmother of Piu if Anil is a parent of Piu and Purnima is a mother of Anil. %%%%%


parent(anil, shawon):- father(anil, shawon).
parent(chandana, shawon):- mother(chandana, shawon).
parent(anil, piu):- father(anil, piu).
parent(chandana, piu):- mother(chandana, piu).
brother(shawon, piu):- father(anil, shawon), father(anil, piu), mother(chandana, shawon), mother(chandana, piu).
parent(gupinad, anil):- father(gupinad, anil).
parent(purnima, anil):- mother(purnima, anil).
grandfather(gupinad, shawon):- parent(anil, shawon), parent(gupinad, anil).
grandfather(gupinad, piu):- parent(anil, piu), parent(gupinad, anil).
grandmother(purnima, shawon):- parent(anil, shawon), parent(purnima, anil).
grandmother(purnima, piu):- parent(anil, piu), parent(purnima, anil).


%%%%% Question & Answer %%%%%
%%%%% Q1. Who is Shawon's father? => father(X, shawon). %%%%%
%%%%% Ans: X = anil %%%%%
%%%%% Q2. Is Chandana the mother of Anik? => mother(chandana, anik). %%%%%
%%%%% Ans: false %%%%%
%%%%% Q3. Is Chandana is the mother of Shawon? => mother(chandana, shawon). %%%%%
%%%%% Ans: true %%%%%
%%%%% Q4. Does Gupinad have a grandchild? => grandfother(gupinad, _). %%%%%
%%%%% Ans: true %%%%%
%%%%% Q5. Who is Shawon's grandfather? => grandfather(X, shawon). %%%%%
%%%%% Ans: X = gupinad %%%%%
%%%%% Q6. Who is Shawon's grandmother? => grandmother(X, shawon). %%%%%
%%%%% Ans: X = purnima %%%%%
%%%%% Q6. Does Shawon have a sister? => brother(shawon, _). %%%%%
%%%%% Ans: true %%%%%
%%%%% Q7. Who is Piu's brother? => brother(X, piu). %%%%%
%%%%% Ans: X = shawon %%%%%
