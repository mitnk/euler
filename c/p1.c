#include <stdio.h>

int sum_of_35(int max)
{
    int sum = 0;
    int i = 1;
    for (i=1; i<max; i++)
    {
        if (i % 3 == 0 || i % 5 == 0)
            sum += i;
    }
    return sum;
}

main()
{
    printf("sum: %d\n", sum_of_35(1000));
    return 0;
}
