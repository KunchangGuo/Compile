# define INFIX2POSTFIX 1

struct ast
{
    int nodetype;
    struct ast* l;
    struct ast* r;
};

struct numval
{
    int nodetype;
    double number;
};

struct ast* newast(int nodetype, struct ast* l, struct ast* r);

struct ast* newnum(double d);

#if !INFIX2POSTFIX
double eval(struct ast* );
#else
void eval(struct ast* );
#endif

void freeast(struct ast*);