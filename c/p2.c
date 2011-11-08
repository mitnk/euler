#include <stdio.h>

int sum_of_even(int max)
{
    int sum = 0;
    int fibo = 0;
    int fibo1 = 1;
    int fibo2 = 2;
    while (fibo1 + fibo2 <= max)
    {
        fibo = fibo1 + fibo2;
        if (fibo % 2 == 0)
            sum += fibo;
        fibo1 = fibo2;
        fibo2 = fibo;
    }
    return sum + 2;
}

main()
{
    printf("%d\n", sum_of_even(4000000));
    return 0;
}
