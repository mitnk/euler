// Problem 6 of Project Euler
// Find the difference between the sum of the squares of 
// the first one hundred natural numbers and the square of the sum.

#include <stdio.h>

main()
{
    int i;
    int sum1 = 0;
    int sum2 = 0;
    for (i = 1; i <= 100; i++)
    {
        sum1 += i * i;
        sum2 += i;
    }
    printf("%d\n", sum2 * sum2 - sum1);
}
