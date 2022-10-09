% Read a number and prints his lenght
readNumber:- read(Number), numberLength(Number, Length), write(Length).

% Integer division
div(Number, Quotient):- Quotient is Number // 10, !.

% Calculates number length
numberLength(Number, 1):-Number < 10,!.
numberLength(Number, Lenght):- div(Number, Quotient),
    numberLength(Quotient, Counter),
    Lenght is Counter + 1.
