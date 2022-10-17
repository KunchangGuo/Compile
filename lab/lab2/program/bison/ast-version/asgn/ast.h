#define SYMTBLEN 100

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

struct symbol   /* symbol table */
{
    char* name; /* a variable name */
    double value;
};

struct symbol symtb[SYMTBLEN];

struct symref   /* var ref or dec */
{
    int nodetype;   /* type 'R' */
    struct symbol* s;   /* relavant symtb */
};

struct symasgn  /* assignment of var */
{
    int nodetype;   /* type '=' */
    struct symbol* s;
    struct ast* v;  /* value */
};

struct ast* newast(int nodetype, struct ast* l, struct ast* r);

struct ast* newnum(double d);

struct symbol* lookup(char* s);

struct ast *newref(struct symbol *s);

struct ast *newasgn(struct symbol *s, struct ast *v);

double eval(struct ast* );

void freeast(struct ast*);