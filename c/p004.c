// Problem 4 of Project Euler
// Find the largest palindrome made from the product 
// of two 3-digit numbers.

#include <stdio.h>
#include <string.h>

main()
{
    char buf[31], result[31];
    int max = 0;
    int n = 0;
    int i, j;
    for (i = 100; i < 1000; i++)
    {
        for (j=100; j < 1000; j++)
        {
            sprintf(buf, "%d", i * j);
            if (pali(buf) && max < i * j)
                max = i * j;
        }
            
    }
    printf("%d\n", max);
    return 0;
}

int pali(char * s)
{
    int len = strlen(s);
    if (len % 2 != 0)
        return 0;

    int i;
    for (i = 0; i < len / 2; i++)
    {
        if (s[i] != s[len - i - 1])
            return 0;
    }
    return 1;
}
