int factorial_recursive(int n)
{
    if (n < 2) {
        return 1;
    }
    return n * factorial_recursive(n - 1);
}

int factorial_for(int n)
{
    int result = 1;
    for (int i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}

int main()
{
    return 0;
}