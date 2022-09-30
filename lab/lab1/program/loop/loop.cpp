#include <iostream>
#include <math.h>
using namespace std;

#define N 1000000
double *a = nullptr;

void init() 
{
    if (a == nullptr)
    {
        a = new double[N];
    }
    srand((unsigned)time(0));
    for (int i = 0; i < N; i++)
    {
        int t = pow(-1, rand() % 2 + 1);
        a[i] = t * rand() / double(RAND_MAX);
    }
}

void loop(){
    for (int i = 0; i < N; i++)
    {
        a[i] = a[i] * 2000;
        a[i] = a[i] / 10000;
    }
}

int main() 
{
    init();
    loop();
    return 0;
}
