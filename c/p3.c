#include <assert.h>
#include <stdio.h>

int is_prime(long n)
{
    if (n < 2)
        return 0;
    if (n == 2)
        return 1;
    if (n % 2 == 0)
        return 0;

    long i = 0;
    for (i = 3; i * i <= n; i += 2)
        if (n % i == 0)
            return 0;
    return 1;
}

main()
{
    assert(sizeof(long) == 8);
    long a = 600851475143;
    long max = 0;
    long i = 1;
    for (i = 1; i * i <= a; i++)
        if (a % i == 0 && is_prime(i))
            max = i;
    printf("%ld\n", max);
    return 0;
}
