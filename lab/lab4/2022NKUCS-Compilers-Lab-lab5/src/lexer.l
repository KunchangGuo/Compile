%option noyywrap
%{
    /*
    * You will need to comment this line in lab5.
    */
    //#define ONLY_FOR_LEX
    
    #ifdef ONLY_FOR_LEX
    #else
    #define YYSTYPE void *
    #include "parser.h"
    #endif

    #define YY_NO_UNPUT
    #define YY_NO_INPUT

    #include <string>
    #include <iostream>
    using namespace std;

    extern FILE *yyin; 
    extern FILE *yyout;

    int offset = 0;
    void DEBUG_FOR_LAB4(std::string s){
        std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\n";
        fputs(DEBUG_INFO.c_str(), yyout);
    }
    #ifdef ONLY_FOR_LEX
    int IDcount=0;//IDcount
    char map[100][100];//符号表
    int l_scope=0;//左括号数量
    int r_scope=0;//右括号数量
    int new_scope=1;//作用域标记符
    #endif
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
        offset += strlen(yytext);
        return INT;
    #endif
}
"void" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("VOID\tvoid");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return VOID;
    #endif 
}
"float" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("FLOAT\tfloat");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return FLOAT;
    #endif
}
"const" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CONST\tconst");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return CONST;
    #endif 
}
"if" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("IF\tif");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return IF;
    #endif
};
"else" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ELSE\telse");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return ELSE;
    #endif
};
"while" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("WHILE\twhile");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return WHILE;
    #endif
};
"continue" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CONTINUE\tcontinue");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return CONTINUE;
    #endif
};
"break" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("BREAK\tbreak");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return BREAK;
    #endif
};
"return" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RETURN\treturn");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return RETURN;
    #endif
}
"=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ASSIGN\t=");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return ASSIGN;
    #endif
}
"==" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("EQUAL\t==");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return EQUAL;
    #endif
}
"!=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("NEQUAL\t!=");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return NEQUAL;
    #endif
}
"<" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LESS\t<");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return LESS;
    #endif
}
"<=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LEQUAL\t<=");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return LEQUAL;
    #endif
}
">" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("GREATER\t>");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return GREATER;
    #endif
}
">=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("GEQUAL\t>=");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return GEQUAL;
    #endif
}
"+" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ADD\t+");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return ADD;
    #endif
}
"-" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SUB\t-");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return SUB;
    #endif
}
"*" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MUL\t*");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return MUL;
    #endif
}
"/" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("DIV\t/");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return DIV;
    #endif
}
"%" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MOD\t%");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return MOD;
    #endif
}
"||" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("OR\t||");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return OR;
    #endif
}
"&&" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("AND\t&&");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return AND;
    #endif
}
"!" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("NOT\t!");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return NOT;
    #endif
}
";" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SEMICOLON\t;");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return SEMICOLON;
    #endif
}
"(" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LPAREN\t(");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return LPAREN;
    #endif
}
")" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RPAREN\t)");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return RPAREN;
    #endif
}
"[" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LBRACKET\t[");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return LBRACKET;
    #endif
}
"]" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RBRACKET\t]");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
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
        offset += strlen(yytext);
        return LBRACE;
    #endif
}
"}" {
    #ifdef ONLY_FOR_LEX
        r_scope++;
        DEBUG_FOR_LAB4("RBRACE\t}");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return RBRACE;
    #endif
}
"," {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("COMMA\t,");
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
        return COMMA;
    #endif
}
{DECIMIAL} {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4(string("NUMBER\t") + string(yytext));
        offset += strlen(yytext);
    #else
        offset += strlen(yytext);
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
        offset += strlen(yytext);
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
        offset += strlen(yytext);
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
        char *lexeme;
        lexeme = new char[strlen(yytext) + 1];
        strcpy(lexeme, yytext);
        yylval.strtype = lexeme;
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
