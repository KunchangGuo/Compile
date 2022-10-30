%option noyywrap
%{
    /*
    * You will need to comment this line in lab5.
    */
    #define ONLY_FOR_LEX
    
    #ifdef ONLY_FOR_LEX
    #else
    #define YYSTYPE void *
    #include "parser.h"
    #endif

    #define YY_NO_UNPUT
    #define YY_NO_INPUT
    #include <string>

    #ifdef ONLY_FOR_LEX
    #include <ostream>
    #include <fstream>
    using namespace std;
    extern FILE *yyin; 
    extern FILE *yyout;

    // #include "symtab.c"
    int offset = 0;
    void DEBUG_FOR_LAB4(std::string s){
        std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\t" + to_string(yylineno) + "\t" + to_string(offset) + "\n";
        fputs(DEBUG_INFO.c_str(), yyout);
    }
    #endif
    int IDcount=0;//IDcount
    char map[100][100];//符号表
    int l_scope=0;//左括号数量
    int r_scope=0;//右括号数量
    int new_scope=1;//作用域标记符

%}

DECIMIAL ([1-9][0-9]*|0)
OCTAL (0[0-7]+)
HEXADECIMAL (0[xX][0-9A-Fa-f]+)
ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]
%x BLOCKCOMMENT
BLOCKCOMMENTBEGIN \/\*
BLOCKCOMMENTELEMENT .
BLOCKCOMMENTEND \*\/
LINECOMMENT \/\/[^\n]*

%%

"int" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("INT\tint");
        offset += strlen(yytext);
    #else
        return INT;
    #endif
}
"void" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("VOID\tvoid");
        offset += strlen(yytext);
    #else
        return VOID;
    #endif 
}
"float" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("FLOAT\tfloat");
        offset += strlen(yytext);
    #else
        return FLOAT;
    #endif
}
"const" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CONST\tconst");
        offset += strlen(yytext);
    #else
        return CONST;
    #endif 
}
"if" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("IF\tif");
        offset += strlen(yytext);
    #else
        return IF;
    #endif
};
"else" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ELSE\telse");
        offset += strlen(yytext);
    #else
        return ELSE;
    #endif
};
"while" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("WHILE\twhile");
        offset += strlen(yytext);
    #else
        return WHILE;
    #endif
};
"continue" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CONTINUE\tcontinue");
        offset += strlen(yytext);
    #else
        return CONTINUE;
    #endif
};
"break" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("BREAK\tbreak");
        offset += strlen(yytext);
    #else
        return BREAK;
    #endif
};
"return" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RETURN\treturn");
        offset += strlen(yytext);
    #else
        return RETURN;
    #endif
}
"=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ASSIGN\t=");
        offset += strlen(yytext);
    #else
        return ASSIGN;
    #endif
}
"==" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("EQUAL\t==");
        offset += strlen(yytext);
    #else
        return EQUAL;
    #endif
}
"!=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("NEQUAL\t!=");
        offset += strlen(yytext);
    #else
        return NEQUAL;
    #endif
}
"<" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LESS\t<");
        offset += strlen(yytext);
    #else
        return LESS;
    #endif
}
"<=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LEQUAL\t<=");
        offset += strlen(yytext);
    #else
        return LEQUAL;
    #endif
}
">" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("GREATER\t>");
        offset += strlen(yytext);
    #else
        return GREATER;
    #endif
}
">=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("GEQUAL\t>=");
        offset += strlen(yytext);
    #else
        return GEQUAL;
    #endif
}
"+" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ADD\t+");
        offset += strlen(yytext);
    #else
        return ADD;
    #endif
}
"-" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SUB\t-");
        offset += strlen(yytext);
    #else
        return SUB;
    #endif
}
"*" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MUL\t*");
        offset += strlen(yytext);
    #else
        return MUL;
    #endif
}
"/" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("DIV\t/");
        offset += strlen(yytext);
    #else
        return DIV;
    #endif
}
"%" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MOD\t%");
        offset += strlen(yytext);
    #else
        return MOD;
    #endif
}
"||" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("OR\t||");
        offset += strlen(yytext);
    #else
        return OR;
    #endif
}
"&&" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("AND\t&&");
        offset += strlen(yytext);
    #else
        return AND;
    #endif
}
"!" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("NOT\t!");
        offset += strlen(yytext);
    #else
        return NOT;
    #endif
}
";" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SEMICOLON\t;");
        offset += strlen(yytext);
    #else
        return SEMICOLON;
    #endif
}
"(" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LPAREN\t(");
        offset += strlen(yytext);
    #else
        return LPAREN;
    #endif
}
")" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RPAREN\t)");
        offset += strlen(yytext);
    #else
    return RPAREN;
    #endif
}
"[" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LBRACKET\t[");
        offset += strlen(yytext);
    #else
        return LBRACKET;
    #endif
}
"]" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RBRACKET\t]");
        offset += strlen(yytext);
    #else
        return RBRACKET;
    #endif
}
"{" {
    #ifdef ONLY_FOR_LEX
        if(l_scope-r_scope==0)
            new_scope=0;
        else
            new_scope=1;
        l_scope++;
        DEBUG_FOR_LAB4("LBRACE\t{");
        offset += strlen(yytext);
    #else
        return LBRACE;
    #endif
}
"}" {
    #ifdef ONLY_FOR_LEX
        r_scope++;
        DEBUG_FOR_LAB4("RBRACE\t}");
        offset += strlen(yytext);
    #else
        return RBRACE;
    #endif
}
"," {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("COMMA\t,");
        offset += strlen(yytext);
    #else
        return COMMA;
    #endif
}
{DECIMIAL} {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4(string("NUMBER\t") + string(yytext));
        offset += strlen(yytext);
    #else
        return INTEGER;
    #endif
}
{OCTAL} {
    #ifdef ONLY_FOR_LEX
        int temp;
        sscanf(yytext, "%o", &temp);
        DEBUG_FOR_LAB4(string("NUMBER\t") + to_string(temp));
        offset += strlen(yytext);
    #else
        return INTEGER;
    #endif
}
{HEXADECIMAL} {
    #ifdef ONLY_FOR_LEX
        int temp;
        sscanf(yytext, "%x", &temp);
        DEBUG_FOR_LAB4(string("NUMBER\t") + to_string(temp));
        offset += strlen(yytext);
    #else
        return INTEGER;
    #endif
}
{ID} {
    #ifdef ONLY_FOR_LEX
        int flag = 0;
        int i = 0;
        for(i=IDcount-1;i>0;i--)
        {
           if(strcmp(yytext,map[i])==0)
           {
               flag=1;break;
           }
        }
        if(flag==1&&new_scope!=0)//匹配到已有字符但仍处在旧的作用域
        {
            DEBUG_FOR_LAB4(string("ID\t") + string(yytext));
           fprintf(yyout,"ID %d %s\n",i,yytext);
        }
        else//没有匹配到已有字符或者来到了新的作用域
        {
             IDcount++;
             strcpy(map[IDcount-1],yytext);
             new_scope=1;//每次插入一个新字符后需要将作用域标记符重新置1
             DEBUG_FOR_LAB4(string("ID\t") + string(yytext));
             fprintf(yyout,"ID %d %s\n",IDcount-1,yytext);
        }
        // symtb_insert(yytext, TYPE_UDEF, ATTR_UDEF, yylineno, offset);
        //DEBUG_FOR_LAB4(string("ID\t") + string(yytext));
        offset += strlen(yytext);
    #else
        return ID;
    #endif
}
<*>{EOL} {
    yylineno++;
    offset = 0;
}
{WHITE} { offset += strlen(yytext); }
{LINECOMMENT} {}
{BLOCKCOMMENTBEGIN} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{BLOCKCOMMENTELEMENT} {}
<BLOCKCOMMENT>{BLOCKCOMMENTEND} {BEGIN INITIAL;}
%%

#ifdef ONLY_FOR_LEX
int main(int argc, char **argv){
    if(argc != 5){
        fprintf(stderr, "Argument Not Enough");
        exit(EXIT_FAILURE);
    }

    if(!(yyin = fopen(argv[1], "r"))){
        fprintf(stderr, "No such file or directory: %s", argv[1]);
        exit(EXIT_FAILURE);
    }

    if(!(yyout = fopen(argv[3], "w"))){
        fprintf(stderr, "No such file or directory: %s", argv[3]);
        exit(EXIT_FAILURE);
    }

    /* symtb_init(); */
    yylex();
    return 0;
}
#endif
