// Problem 3 of Project Euler
// What is the largest prime factor of the number 600851475143

#include <stdio.h>

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

main()
{
    unsigned long long a = 600851475143ULL;
    unsigned long long max = 0;
    unsigned long long i = 1;
    for (i = 1; i * i <= a; i++)
        if (a % i == 0 && is_prime(i))
            max = i;
    printf("%lld\n", max);
    return 0;
}
