%alimento(grupo,nombre).
food(protein, fish).
food(protein, pork).
food(protein, chicken).
food(carbs, rice).
food(carbs, potato).
food(carbs, bread).
food(fats, oil).

%Rule to print all elements from one grup
printFood(Group):-food(Group, Name), write(Name),nl, false; true.

%Rule to count the amount of elements of one group
countFood(Group):-
    findall(food(_,_), food(Group,_), List),
    length(List, Length),
    write(Length).