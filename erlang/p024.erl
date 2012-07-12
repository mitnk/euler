%%
%% What is the millionth lexicographic permutation of the digits
%% 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
%%

-module(p024).
-export([solution/0, factorial/1, find_result/2]).

solution() ->
    find_result(10, 1000000).

nth_number(N, 0, Excludes) ->
    lists:nth(N, lists:seq($0, $9) -- Excludes);
nth_number(N, _, Excludes) ->
    lists:nth(N + 1, lists:seq($0, $9) -- Excludes).


find(_, Nth, Fact, _) when Nth > Fact ->
    overflow;
find(N, 0, Fact, Result) ->
    find(N, Fact, Fact, Result);
find(0, _, _, Result) ->
    Result;
find(N, Nth, _, Result) ->
    NewFact = factorial(N - 1),
    Div = Nth div NewFact,
    Rem = Nth rem NewFact,
    NewResult = Result ++ [nth_number(Div, Rem, Result)],
    find(N - 1, Rem, NewFact, NewResult).

find_result(N, Nth) ->
    Fact = factorial(N),
    find(N, Nth, Fact, "").

factorial(0) -> 1;
factorial(N) -> N * factorial(N - 1).
