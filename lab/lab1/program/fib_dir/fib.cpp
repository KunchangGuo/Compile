#include <iostream>
using namespace std;

#define x 10

int main()
{
	int a,b,i,t,n;	// declaration of variables

	a=0;
	b=1;
	i=1;
	cin>>n;
	cout<<x<<endl;
	cout<<a<<endl;
	cout<<b<<endl;
	while(i<n)
	{
		t=b;
		b=a+b;
		cout<<b<<endl;
		a=t;
		i=i+1;
	}
}
