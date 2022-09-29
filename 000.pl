% Return the smaller of two numbers.
minor(X,Y,Minor):- X > Y -> Minor is Y.
minor(X,Y,Minor):- X < Y -> Minor is X.