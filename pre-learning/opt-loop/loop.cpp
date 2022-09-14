#include <iostream>
#include <chrono>
#include <math.h>
using namespace std;

#define MODE1 0
#define DEBUG 0

const int N = 100000000;
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

void print()
{
    for (int i = 0; i < N; i++)
    {
        cout << a[i] << ' ';
    }
    cout << endl;
}

void loop1()
{
    #if DEBUG
        cout<<"Under loop1"<<endl;
    #endif
    for (int i = 0; i < N; i++)
    {
        a[i] = a[i] * 2000;
        a[i] = a[i] / 10000;
    }
}

void loop2()
{
    #if DEBUG
        cout<<"Under loop2"<<endl;
    #endif
    double *b = a;
    for (int i = 0; i < N; i++)
    {
        *b = *b * 2000;
        *b = *b / 10000;
        b++;
    }
}

int main()
{
    using namespace std::chrono;
    double time = 0.0;
    int cnt = 0;
    while (time < 1)
    {
        init();
        high_resolution_clock::time_point start = high_resolution_clock::now();
        #if !MODE1
            loop2();
        #else
            loop1();
        #endif
        high_resolution_clock::time_point end = high_resolution_clock::now();
        duration<double> time_span = duration_cast<duration<double>>(end - start);
        time += time_span.count();
        cnt++;
    }
    cout << "Time cost is: " << time / (double)cnt << endl;
    return 0;
}