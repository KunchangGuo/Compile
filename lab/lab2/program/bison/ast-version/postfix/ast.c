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

            /* one subtree */
        case 'M':
            treefree(a->l);
            break;

            /* no subtree */
        case 'K':
//            printf("nodevalue: %4.4g\n", eval(a));
            break;

        default: printf("internal error: free bad node %c\n", a->nodetype);
    }

//    if(a->nodetype!='K') printf("nodetype: %c\n", a->nodetype);
    free(a);
}

#if !INFIX2POSTFIX
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

        default: yyerror("internal error: bad node %c\n", a->nodetype);
    }
    return v;
}
#else
void eval(struct ast* a)
{
    if(!a) {
        yyerror("internal error, null eval");
        return;
    }

    switch(a->nodetype) {
        /* number */
        case 'K':
            printf("%g ", ((struct numval *)a)->number);
            break;

        /* expressions */
        case '+':
        case '-':
        case '*':
        case '/':
            eval(a->l);
            eval(a->r);
            printf("%c ", a->nodetype);
            break;
        case 'M':
            printf("- ");
            eval(a->l);
            break;

        default: yyerror("internal error: bad node %c\n", a->nodetype);
    }
}
#endif