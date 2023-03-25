ayah(david, liza).
ayah(david, john).
ayah(jack, susan).
ayah(jack, ray).
ayah(john, peter).
ayah(john, mary).

ibu(amy, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

is_ayah(X, Y) :- ayah(X, Y).
is_ibu(Z, Y) :- ibu(Z, Y).
is_sodara(A, Y) :- ayah(X, Y), ayah(X, A).
is_kakek(X, A) :- ayah(X, Y), is_ayah(Y, A).
is_kakek(X, A) :- ayah(X, Y), is_ibu(Y, A).
is_nenek(Z, A) :- ibu(Z, Y), is_ibu(Y, A).
is_nenek(Z, A) :- ibu(Z, X), is_ayah(X, A).
is_istri(Z, X) :- menikah(X,Z).
is_suami(X, Z) :- menikah(X,Z).
is_anak(Y, X) :- ayah(X, Y).





