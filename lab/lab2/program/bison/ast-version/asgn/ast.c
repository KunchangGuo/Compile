#  include <stdio.h>
#  include <stdlib.h>
#  include <string.h>
#  include "ast.h"

struct ast* newast(int nodetype, struct ast *l, struct ast *r)
{
    struct ast *a = malloc(sizeof(struct ast));

    if(!a) {
        yyerror("out of space");
        exit(0);
    }
    a->nodetype = nodetype;
    a->l = l;
    a->r = r;
    return a;
}

struct ast* newnum(double d)
{
    struct numval *a = malloc(sizeof(struct numval));

    if(!a) {
        yyerror("out of space");
        exit(0);
    }
    a->nodetype = 'K';
    a->number = d;
    return (struct ast *)a;
}

struct ast* newref(struct symbol *s)
{
    struct symref *a = malloc(sizeof(struct symref));

    if(!a) {
        yyerror("out of space");
        exit(0);
    }
    a->nodetype = 'R';
    a->s = s;
    return (struct ast *)a;
}

struct ast* newasgn(struct symbol *s, struct ast *v)
{
    struct symasgn *a = malloc(sizeof(struct symasgn));

    if(!a) {
        yyerror("out of space");
        exit(0);
    }
    a->nodetype = '=';
    a->s = s;
    a->v = v;
    return (struct ast *)a;
}

struct symbol* lookup(char* sym)
{
    struct symbol *sp = symtb;
    int scount = SYMTBLEN;           /* how many have we looked at */

    int i;
    for(i = 0; i < SYMTBLEN; i++)
    {
        if(sp->name && !strcmp(sp->name, sym))
            return sp;
        if(!sp->name)
            break;
        sp++;
    }

    if(i==SYMTBLEN)
    {
        yyerror("symbol table overflow\n");
        abort();
    }

    sp->name = strdup(sym);
    sp->value = 0.0;
    return sp;
}

void treefree(struct ast *a)
{
    switch(a->nodetype) {

        /* two subtrees */
        case '+':
        case '-':
        case '*':
        case '/':
            treefree(a->r);
            treefree(a->l);
            break;

        /* only free value */
        case '=':
            free( ((struct symasgn *)a)->v);
            break;

        /* one subtree */
        case 'M':
            treefree(a->l);
            break;

            /* no subtree */
        case 'K':
        case 'R':
//            printf("nodevalue: %4.4g\n", eval(a));
            break;

        default: printf("internal error: free bad node %c\n", a->nodetype);
    }

//    if(a->nodetype!='K') printf("nodetype: %c\n", a->nodetype);
    free(a);
}

double eval(struct ast *a)
{
    double v;

    if(!a) {
        yyerror("internal error, null eval");
        return 0.0;
    }

    switch(a->nodetype) {
        /* number */
        case 'K':
            v = ((struct numval *)a)->number;
            break;

        /* expressions */
        case '+':
            v = eval(a->l) + eval(a->r);
            break;
        case '-':
            v = eval(a->l) - eval(a->r);
            break;
        case '*':
            v = eval(a->l) * eval(a->r);
            break;
        case '/':
            v = eval(a->l) / eval(a->r);
            break;
        case 'M':
            v = -eval(a->l);
            break;
        case 'R':
            v = ((struct symref *)a)->s->value;
            break;
        case '=':
            v = ((struct symasgn *)a)->s->value = eval(((struct symasgn *)a)->v);
            break;

        default: yyerror("internal error: bad node %c\n", a->nodetype);
    }
    return v;
}