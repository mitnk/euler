#include <stdio.h>

main()
{
    int i;
    int t;
    for (i = 1; i < 10000000; ++i)
    {
        t = get_triangle(i);
        if (divisor_number(t) > 500)
            break;
    }
    printf("%d: %d\n", i, t);
    return 0;
}

int get_triangle(int n)
{
    int sum = 0;
    int i;
    for (i = 1; i <= n; ++i)
    {
        sum += i;
    }
    return sum;
}

int divisor_number(int n)
{
    int i;
    int sum = 0;
    for (i = 1; i * i <= n; ++i)
    {
        if (n % i == 0)
            ++sum;
    }
    return sum * 2;
}
