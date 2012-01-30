%
% Find the sum of all the multiples of 3 or 5 below 1000.
% 
-module(p001).
-export([solution/0, sum/1, solution2/0, mult3or5/1]).

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


solution2() ->
    N = 999,
    lists:sum([X || X <- lists:seq(1, N), mult3or5(X) ]).


mult3or5(X) ->
    if
        X rem 3 ==0; X rem 5 == 0 ->
            true;
        true ->
            false
    end.
