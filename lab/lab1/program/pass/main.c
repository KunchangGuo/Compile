const int n = 6;
float a[6] = {1, 2, 3, 4, 5, 6};
int m;

void loop(){
    for (int i = 0; i < n; i++)
    {
        a[i] = a[i] * 3;
        a[i] = a[i] / 2;
    }
}

int main() 
{
    if(0) m=1;
    loop();
    return 0;
}
