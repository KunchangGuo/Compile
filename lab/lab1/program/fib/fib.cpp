#include <iostream>
using namespace std;

#define X 10

int main()
{
	int a, b, i, t, n;

	a = 0;
	b = 1;
	i = 1;
	cin >> n;
#if X
	cout << "a=" << a << endl;
#else
	cout << "b=" << b << endl;
#endif
	cout << "X=" << X << endl;
	while (i < n)
	{
		t = b;
		b = a + b;
		cout << b << endl;
		a = t;
		i = i + 1;
	}
}
