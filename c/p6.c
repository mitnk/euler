#include <stdio.h>

main()
{
    int sum1 = 0;
    int sum2 = 0;
    int i;
    for (i = 1; i <= 100; i++)
    {
        sum1 += i * i;
        sum2 += i;
    }
    printf("%d\n", sum2 * sum2 - sum1);
}
