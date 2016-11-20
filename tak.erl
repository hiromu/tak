%% -*- erlang -*-

tarai(X, Y, _) when X =< Y -> Y;
tarai(X, Y, Z) -> tarai(tarai(X - 1, Y, Z), tarai(Y - 1, Z, X), tarai(Z - 1, X, Y)).

main(_) ->
    io:format("~p\n", [tarai(12, 6, 0)]),
    halt(1).


