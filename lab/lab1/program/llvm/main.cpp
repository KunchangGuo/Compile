// for循环形式的fib函数
int fib1(int n)
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

// 递归形式的fib函数
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
    return fib(10);
}
