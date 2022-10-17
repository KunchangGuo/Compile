%{
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "cal.h"

int yylineno;
int yylex();
void yyerror(char *s, ...);
FILE* yyin;

%}

/* yylval */
%union{
    struct ast* a;
    double d;
    struct symbol* s;
}

/* declare tokens */
%token <d> NUMBER
%token <s> NAME
%token EOL

%right '='
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS

%type <a> exp

%%
line:       /* do nothing */
    | line exp EOL
        {
            printf("=%4.4g\n>", eval($2));
            treefree($2);
        };
    | line error EOL
        {
            yyerrok;
            printf("> ");
        };

exp:  exp '+' exp       {$$ = newast('+', $1, $3);}
    | exp '-' exp       {$$ = newast('-', $1, $3);}
    | exp '*' exp       {$$ = newast('*', $1, $3);}
    | exp '/' exp       {$$ = newast('/', $1, $3);}
    | '(' exp ')'       {$$ = $2;}
    | '-' exp %prec UMINUS {$$ = newast('M', $2, NULL);}
    | NUMBER            {$$ = newnum($1);}
    | NAME              {$$ = newref($1);}
    | NAME '=' exp      {$$ = newasgn($1, $3);}
    ;
%%

int yylex()
{
    while(1)
    {
        int c;
        c = getc(yyin);

        /* get NUMBER */
        if(isdigit(c))
        {
            int i = c - '0';
            while(isdigit(c = getc(yyin)))
                i = (10*i) + c-'0';
            yylval.d = i;
            ungetc(c, yyin);
            return NUMBER;
        }

        /* get NAME */
        if(isalpha(c) || c=='_')
        {
            char s[100];
            int i = 0;
            do{
                s[i++] = c;
            }while(isalnum(c = getc(yyin)) || c=='_');
            s[i] = '\0';
            ungetc(c, yyin);
            yylval.s = lookup(s);
            return NAME;
        }

        /* get others */
        switch (c)
        {
            case '+':
                return '+';
            case '-':
                return '-';
            case '*':
                return '*';
            case '/':
                return '/';
            case '(':
                return '(';
            case ')':
                return ')';
            case '=':
                return '=';
            case ';':
                return EOL;
            case EOF:
                return 0;
            case '\n':
            case '\t':
            case ' ':
                break;
            default:
                fprintf(stderr, "Illegal character %c\n", c);
                exit(1);
        }
    }
}

void yyerror(char *s, ...)
{
    va_list ap;
    va_start(ap, s);

    fprintf(stderr, "%d: error: ", yylineno);
    vfprintf(stderr, s, ap);
    fprintf(stderr, "\n");
}

int main()
{
    yyin = stdin;
    printf("> ");
    return yyparse();
}