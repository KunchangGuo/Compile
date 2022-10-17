/* symbol table */
struct symbol   /* a variable name */
{
    char* name; /* stmt for the function */
    double value;
};

/* simple symtab of fixed size */
#define NHASH 9997
struct symbol symtab[NHASH];

struct symbol* lookup(char*);

/* list of symbols, for an argument list */
struct symlist
{
    struct symbol* sym;
    struct symlist* next;
};

struct symlist* newsymlist(struct symbol* sym, struct symlist* next);
void symlistfree(struct symlist* sl);

/* node types
 *  + - * /
 *  M unary minus
 *  L expression or statement list
 *  N symbol ref
 *  = assignment
 */

/* nodes in the abstract syntax tree */
/* all have common initial nodetype */

/* nodes in the abstact syntax tree */
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

struct symref
{
    int nodetype;   /* type N */
    struct symbol* s;
};

struct symasgn
{
    int nodetype;   /* type = */
    struct symbol* s;
    struct ast* v;  /* value */
};

/* build an AST */
struct ast *newast(int nodetype, struct ast *l, struct ast *r);
struct ast *newref(struct symbol *s);
struct ast *newasgn(struct symbol *s, struct ast *v);
struct ast *newnum(double d);

/* evaluate an AST */
double eval(struct ast*);

/* delete and free an AST */
void treefree(struct ast*);