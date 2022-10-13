%{
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);

FILE* yyin;
static int seenof = 0;
%}

%token NUMBER
%token ADD SUB MUL DIV
%token OP CP
%token EOL

%left ADD SUB
%left MUL DIV
%right MINUS

%%
line    :   line expr EOL {printf("\nConverted from infix to postfix\n");}
        |   line EOL
        |
        ;
expr    :   expr ADD expr {printf("+ ");}
        |   expr SUB expr {printf("- ");}
        |   expr MUL expr {printf("* ");}
        |   expr DIV expr {printf("/ ");}
        |   OP expr CP
        |   SUB expr %prec MINUS {printf("-");}
        |   NUMBER  {printf("%d ", $1);}
        ;
%%

int main(void)
{
    yyin = stdin;
    yyparse();
	return 0;
}

int yylex()
{
    if(seenof) return 0;
    while(1)
    {
        int c;
        c = getc(yyin);

        if(isdigit(c))
        {
            int i = c - '0';
            while(isdigit(c = getc(yyin)))
                i = (10*i) + c-'0';
            yylval = i;
            ungetc(c, yyin);
            return NUMBER;
        }

        switch (c)
        {
            case '+':
                return ADD;
            case '-':
                return SUB;
            case '*':
                return MUL;
            case '/':
                return DIV;
            case '(':
                return OP;
            case ')':
                return CP;
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

void yyerror(const char *s)
{
    fprintf(stderr, "%s\n", s);
}