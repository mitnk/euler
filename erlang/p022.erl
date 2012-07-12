%% http://projecteuler.net/index.php?section=problems&id=22
%%
%% Using names.txt (right click and ‘Save Link/Target As…’),
%% a 46K text file containing over five-thousand first names,
%% begin by sorting it into alphabetical order.
%% Then working out the alphabetical value for each name,
%% multiply this value by its alphabetical position in the list
%% to obtain a name score.
%%
%% For example, when the list is sorted into alphabetical order,
%% COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th
%% name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
%%
%% What is the total of all the name scores in the file?
%%

-module(p022).
-export([solution/0]).

solution() ->
    L = read_to_sorted_list(),
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

read_to_sorted_list() ->
    {ok, S} = file:open("p022.txt", read),
    Content = io:get_line(S, ''),
    file:close(S),
    L = [string:strip(X, both, $") || X <- string:tokens(Content, ",")],
    lists:sort(L).

score(I, S) ->
    N = lists:sum([X - $A + 1 || X <- S]),
    I * N.
