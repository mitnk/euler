%%
%% in the Fibonacci sequence (1, 2, 3, 5, 8, 13 ...) 
%% whose values do not exceed %% four million, 
%% find the sum of the even-valued terms.
%%

-module(p002).
-export([solution/1, sum_of_even_fib/3]).

solution(Target) when is_integer(Target), Target > 0 ->
    sum_of_even_fib(Target, 1, 1).
    
sum_of_even_fib(Target, N1, N2) when N1 < Target, N2 < Target ->
    S = N1 + N2,
    S + sum_of_even_fib(Target, S + N2, 2 * S + N2);
    
sum_of_even_fib(_, _, _) -> 0.


    (define (abs1 x)
      (cond ((> x 0) x)
            ((= x 0) 0)
            ((< x 0) (- x))))

    (define (abs2 x)
      (cond ((< x 0) (- x))
            (else x)))

    (define (abs3 x)
      (if (< x 0)
          (- x)
          x))

    (abs1 -123)
    (abs1 17)
    (abs2 -18)
    (abs2 2.3)
    (abs3 -7)
    (abs3 3)
