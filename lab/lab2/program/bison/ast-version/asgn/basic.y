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
    struct symbol* s;
}

%token <d> NUMBER
%token <s> VAR
%token EOL

%type <a> exp

%right '='
%left '+' '-'
%left '*' '/'
%right UMINUS

%%

line: /* empty, do nothing */
    | line exp EOL
        {
            printf("= %g\n", eval($2));
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
    | VAR { $$ = newref($1); }
    | VAR '=' exp { $$ = newasgn($1, $3); }
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

        /* get VAR */
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
            return VAR;
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
            case '=':
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