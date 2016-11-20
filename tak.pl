:- initialization main.

tarai(X, Y, _, A) :- X =< Y, A is Y.
tarai(X, Y, Z, A) :- tarai(X - 1, Y, Z, A1), tarai(Y - 1, Z, X, A2), tarai(Z - 1, X, Y, A3), tarai(A1, A2, A3, A).

main(_) :- tarai(12, 6, 0, A), write(A), write("\n"), halt.
