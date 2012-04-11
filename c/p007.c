// Problem 7 of Project Euler
// What is the 10 001st prime number?

#include <stdio.h>

main()
{
    int n = 1;
    int i;
    for (i = 3; ; i += 2)
    {
        if (is_prime(i))
        {
            ++n;
            if (n == 10001)
                break;
        }
    }
    printf("%d\n", i);
    return 0;
}

int is_prime(unsigned long long n)
{
    if (n < 2)
        return 0;
    if (n == 2)
        return 1;
    if (n % 2 == 0)
        return 0;

    unsigned long long i = 0;
    for (i = 3; i * i <= n; i += 2)
        if (n % i == 0)
            return 0;
    return 1;
}
