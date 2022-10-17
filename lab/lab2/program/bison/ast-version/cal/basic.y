%{
# include "ast.h"
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <ctype.h>
# include <stdarg.h>

int yylineno;
int yylex();
void yyerror(char *s, ...);
FILE* yyin;
%}

%union
{
	struct ast* a;
	double d;
}

%token <d> NUMBER
%token EOL

%type <a> exp

%left '+' '-'
%left '*' '/'
%right UMINUS

%%

line: /* empty, do nothing */
    | line exp EOL
        {
            printf("= %4.4g\n", eval($2));
            treefree($2);
            printf("> ");
        }
    | line EOL { printf("> "); }
    ;

exp:  exp '+' exp { $$ = newast('+', $1, $3); }
    | exp '-' exp { $$ = newast('-', $1, $3); }
    | exp '*' exp { $$ = newast('*', $1, $3); }
    | exp '/' exp { $$ = newast('/', $1, $3); }
    | '-' exp %prec UMINUS { $$ = newast('M', $2, NULL); }
    | '(' exp ')' { $$ = $2; }
    | NUMBER { $$ = newnum($1); }
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
            yylval.d = (double)i;
            ungetc(c, yyin);
            return NUMBER;
        }

        /* get others */
        switch (c)
        {
            case '+':
            case '-':
            case '*':
            case '/':
            case '(':
            case ')':
                return c;
            case ';':
                return EOL;
            case EOF:
                return 0;
            case '\n':
            case '\t':
            case ' ':
                break;
            default:
                yyerror("Illegal character %c\n", c);
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