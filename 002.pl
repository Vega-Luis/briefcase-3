%is odd number
isOdd(Number):- Number mod 2 =\= 0.


%write number digits
digits(0,_,_).
digits(Number, Mod, Div):- Mod is Number mod 10,
    write(Mod),nl,
    Div is Number // 10,
    digits(Div, _,_).

printDigits(Number):- digits(Number,_,_).