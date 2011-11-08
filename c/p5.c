#include <stdio.h>

main()
{
    int i;
    int step = 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19;
    for (i = step; ; i += step)
    {
        if (i % 4 == 0 && \
            i % 6 == 0 && \
            i % 8 == 0 && \
            i % 9 == 0 && \
            i % 10 == 0 && \
            i % 12 == 0 && \
            i % 14 == 0 && \
            i % 15 == 0 && \
            i % 16 == 0 && \
            i % 18 == 0 && \
            i % 20 == 0)
            break;
    }
    printf("%d\n", i);
}
