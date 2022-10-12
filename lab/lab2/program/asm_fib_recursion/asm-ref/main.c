int fib(int n)
{
    if (n <= 0)
        return 0;
    if (n < 2)
        return n;
    return fib(n - 1) + fib(n - 2);
}

int main()
{
    int n = 10;
    return fib(n);
    // return 0;
}