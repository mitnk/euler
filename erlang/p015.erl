%%
%% To reach the bottom-right corner in a grid of 
%% size n we need to move n times down (D) and 
%% n times right (R), in any order. So we can just see the
%% problem as how to put n D's in a 2*n array 
%% (a simple permutation), and fill the holes with R's
%%
-module(p015).
-export([solution/0, grid/1]).

solution() ->
    grid(20).

grid(N) ->
    factorial(N * 2) / (factorial(N * 2 - N) * factorial(N)).

factorial(1) ->
    1;
factorial(N) ->
    N * factorial(N - 1).
