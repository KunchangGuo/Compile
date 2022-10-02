#include <stdio.h>

const int n = 6;
float a[6] = {1, 2, 3, 4, 5, 6};

void loop(){
    for (int i = 0; i < n; i++)
    {
        a[i] = a[i] * 3;
        a[i] = a[i] / 2;
    }
}

void print(){
    for (int i = 0; i < n; i++)
    {
        printf("%f ", a[i]);
    }
}

int fib(int n)
{
    if (n == 0)
    {
        return 0;
    }
    if (n == 1)
    {
        return 1;
    }
    return fib(n - 1) + fib(n - 2);
}

int main() 
{
    loop();
    print();
    return fib(10);
}
