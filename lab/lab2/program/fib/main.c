#include <stdio.h>

int fib_for(int n)
{
    int a = 0;
    int b = 1;
    int c = 0;
    for (int i = 0; i < n; i++)
    {
        c = a + b;
        a = b;
        b = c;
    }
    return a;
}

int fib_recursive(int n)
{
    if (n < 2)
    {
        return n;
    }
    return fib_recursive(n - 1) + fib_recursive(n - 2);
}

int main()
{
    int n = 10;
    printf("%d\n", fib_for(n));
    return 0;
}