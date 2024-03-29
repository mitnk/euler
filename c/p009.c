// Problem 9 of Project Euler
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc

#include <stdio.h>

main()
{
   int a, b, c;
   const int L = 1000;
   for (a = 1; a <= L/4; a ++)
   {
       for (b = L/4; b <= L/2; b++)
       {
           c = L - a - b;
           if (a * a + b * b == c * c)
               printf("%d\n", a * b * c);
       }
   }
}
