-module(p022).
-export([solution/0]).

solution() ->
    L = read_to__sorted_list(),
    sum(L).

sum(L) -> sum(1, 0, L).

sum(Index, N, L) ->
    case Index > length(L) of
        true ->
            N;
        _ ->
            Score = score(Index, lists:nth(Index, L)),
            sum(Index + 1, N + Score, L)
    end.

read_to__sorted_list() ->
    {ok, S} = file:open("p022.txt", read),
    Content = io:get_line(S, ''),
    file:close(S),
    L = [string:strip(X, both, $") || X <- string:tokens(Content, ",")],
    lists:sort(L).

score(I, S) ->
    N = lists:sum([X - $A + 1 || X <- S]),
    I * N.

