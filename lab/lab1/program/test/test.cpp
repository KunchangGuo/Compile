int Test1(int a)
{
    int b;
    if (a > 33)
    {
        b = 66;
    }
    else
    {
        b = 77;
    }
    return b;
}

int Test2(int a)
{
    int b = 0;
    for (int i = 0; i < a; i++)
    {
        b = b + 1;
    }
    return b;
}

int main()
{
    return 0;
}