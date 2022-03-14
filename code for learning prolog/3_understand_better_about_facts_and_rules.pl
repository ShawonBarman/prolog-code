%%%%% Shawon likes Cricket %%%%%
likes(shawon, cricket).
%%%%% Hasin likes Cricket %%%%%
likes(hasin, cricket).
%%%%% Sojib likes Football %%%%%
likes(sojib, football).
%%%%% Rifat likes Ludu %%%%%
likes(rifat, ludu).
%%%%% Hridoy doestn't likes Cricket %%%%%
not(likes(hridoy, cricket)).

%%%%% Q1. what game Rifat likes? => likes(rifat, X). %%%%%
%%%%% Ans: X = ludu %%%%%
%%%%% Q2. how many persons likes cricket? => likes(X, cricket). %%%%%
%%%%% Ans: X = shawon (then input ; and then press enter) X = hasin. %%%%%
%%%%% Q3. who likes ludu? => likes(X, ludu). %%%%%
%%%%% Ans: X = rifat. %%%%%
%%%%% Q4. list all persons with their likes. =>liskes(X, Y). %%%%%
%%%%% Ans: X = shawon, Y = cricket ; X = hasin, Y = cricket ; X = sojib, Y = football ; X = rifat, Y = ludu %%%%%
%%%%% Q5. Is there anyone likes cricket or not? => likes(_, cricket). %%%%% _ is the anonymous variable
%%%%% Ans: true %%%%%