%
% Find the sum of all the multiples of 3 or 5 below 1000.
% 
-module(p001).
-export([solution/0, sum/1]).

solution() ->
    sum(999).

sum(N) ->
    if
        N < 3 ->
            0;
        N == 3 ->
            3;
        N rem 3 == 0; N rem 5 == 0 ->
            N + sum(N - 1);
        true ->
            sum(N - 1)
    end.
