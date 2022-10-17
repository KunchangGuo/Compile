#include <string.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct s
{
    int a;
    int c;
    char *b;
};

typedef struct ss
{
    int a;
    int c;
};

const int s_size = sizeof(struct s);
const int ss_size = sizeof(struct ss);

struct s* news(int a, char *b, int c)
{
    struct s *s = malloc(s_size);
    s->a = a;
    s->b = b;
    s->c = c;
    return s;
}

struct s* newss(int a, int c)
{
    struct ss *s = malloc(ss_size);
    s->a = a;
    s->c = c;
    return (struct s*)s;
}

int main()
{
    // struct s* s = news(1, "hellz", 2);
    // struct s* s1 = news(1, "hello", 2);
    // printf("%d\n", strcmp(s->b, s1->b));
    // struct s* ss = newss(1, 2);
    // printf("%d, %d\n", ss->a, ss->c);
    char a[50];
    strcpy(a, "hello");
    strcat(a,"123");
    printf("%s\n",a);
    printf("%d\n", sizeof(a));
    return 0;
}