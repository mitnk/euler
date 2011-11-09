// Problem 10 of Project Euler
// Find the sum of all the primes below two million.

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
    unsigned long long sum = 2;
    int i;
    for(i = 3; i < 2000000; i += 2)
        if (is_prime(i))
            sum += i;
    printf("%lld\n", sum);
}
