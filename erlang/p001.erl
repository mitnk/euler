-module(p001).
-export([solution/0, sum/1]).

solution() ->
    sum(999).

sum(3) ->
    3;
sum(N) ->
    if
        N rem 3 == 0; N rem 5 == 0 ->
            N + sum(N - 1);
        true ->
            sum(N - 1)
    end.
