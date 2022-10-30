%option noyywrap
%option yylineno
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
   #define OVER -1
   #define IN 0
   #define OUT 1
   typedef char* TToken;//当前把token的类型定义为字符串，之后有可能要改成int
   typedef unsigned InBlock;//当前把token的类型定义为字符串，之后有可能要改成int
   typedef unsigned OthType;

   #include <ostream>
   #include <fstream>
   #include <map>
   #include <vector>


   using namespace std;

   extern FILE *yyin;
   extern FILE *yyout;

   typedef struct SymbolTable
   {
       TToken tokentype;//存当前字符串的类型
       //char* tokentype;//存当前字符串的类型
       char* cisu;//词素
       TToken tsort;//存当前字符串的类别，比如是int型……，当前没用
       unsigned ifinblock;//是否在当前作用域中，若为0则已经不在它的作用域中了，如果上一个相同的标识符的这个值为0，则表示当前这个同名标识符为新定义的
       InBlock inblock;//InBlock当前作用域，可以理解成第几个{
       OthType othertype;//OthType其他属性
       unsigned lineno;//当前字符串定义处的行号
       unsigned lineoffset;//当前字符串定义处的所在行的偏移
       SymbolTable* nextt;//存下一个字符串的地址
   }STable, *pSTable;
   
   //只有id存一下就可以
   //其他的先不存，之后再说

   
   STable* tablehead = new STable;
   
   pSTable init(char* cs, TToken ttoken);
   void blocktrans(pSTable p);
   pSTable ifnewid(char* cs, TToken ttoken);//判断当前的新标识符是否定义过
   void GetRBrace();
   void GetLBrace();
   void InitTable();



   #ifdef ONLY_FOR_LEX //!!!!!!!!!!!!!!!!!1注意这里要取消注释




   void InitTable()
   {
       tablehead->nextt=NULL;
   }

   void blocktrans(pSTable p)
   {
       switch(p->inblock)
       {
           case -1:
           p->ifinblock=OVER;
           break;
           case 0:
           p->ifinblock=IN;
           break;
           default:
           p->ifinblock=OUT;
       }
       return ;
   }


   pSTable ifnewid(char* cs, TToken ttoken)//判断当前的新标识符是否定义过，若定义过则返回指针，若没有则返NULL
   {
       pSTable tmp=tablehead->nextt;
       //printf("当前词素:%s\n",cs);
       //printf("----------------\n");
       while(tmp!=NULL)
       {
           //printf("进入循环\n");
           //printf("循环当前词素:%s\n",tmp->cisu);
           if(strcmp(tmp->cisu,cs)==0)//&&(tmp->tokentype==ttoken))
           {
               if(tmp->ifinblock==IN)//说明当前识别出来的字符串不是初次定义
               {
                   //printf("tmp->ifinblock==IN\n");
                   return tmp;
                   //return false;
               }
               if(tmp->ifinblock==OVER)
               {
                   //printf("tmp->ifinblock==OVER\n");
                   tmp=tmp->nextt;
                   continue;
               }
               if(tmp->ifinblock==OUT)
               {
                   //init(cs ,ttoken);

                   //return tablehead->nextt;
                   //return true;
                   //printf("tmp->ifinblock==OUT\n");
                   return NULL;
               }
           }
           tmp=tmp->nextt;
       };
       if(tmp==NULL)//说明没有相同的字符串，或者有但是其作用域已经结束
       {
           //printf("tmp==NULL\n");
           //init(cs,ttoken);
           //return tablehead->nextt;
           //return true;

           return NULL;
       }
       else{
           return NULL;
       }
   }


   pSTable init(char* cs, TToken ttoken)//初始化，创建一个新id变量
   {
       pSTable newsym=new STable;
       pSTable tmp=tablehead->nextt;
       tablehead->nextt=newsym;
       newsym->nextt=tmp;

       newsym->cisu=cs;
       printf("init当前词素:%s\n",newsym->cisu);
       newsym->tokentype=ttoken;
       newsym->inblock=0;
       newsym->ifinblock=IN;
       newsym->lineno=yylineno;

       return newsym;
   }

   void GetRBrace()
   {
       printf("进入GetRBrace()------\n");
       pSTable tmp=tablehead->nextt;
       while(tmp!=NULL)
       {
           if(tmp->ifinblock==OVER)
           {
               tmp=tmp->nextt;
               continue;
           }
           if(tmp->ifinblock==IN)//若当前标识符正在作用域中，又来了一个}，则inblock值应当为-1，该标识符的作用域结束
           {
               tmp->inblock=tmp->inblock-1;
               blocktrans(tmp);
               tmp=tmp->nextt;
               continue;
           }
           if(tmp->ifinblock==OUT)//当前标识符的作用域被占用了，来了一个}，应判断是否要恢复其作用域
           {
               printf("---------OUT减法前--------\n");
               printf("tmp->cisu: %s\n",tmp->cisu);
               printf("tmp->ifinblock: %d\n",tmp->ifinblock);
               printf("tmp->inblock: %d\n",tmp->inblock);
               printf("---------OUT--------\n");

               tmp->inblock=tmp->inblock-1;

               printf("---------OUT减法后--------\n");
               printf("tmp->cisu: %s\n",tmp->cisu);
               printf("tmp->ifinblock: %d\n",tmp->ifinblock);
               printf("tmp->inblock: %d\n",tmp->inblock);
               printf("---------OUT--------\n");

               blocktrans(tmp);
               tmp=tmp->nextt;
               continue;
               //if(tmp->inblock==0)语法错误
           }
           printf("当前标识符作用域\n");
           printf("tmp->cisu: %s\n",tmp->cisu);
           printf("tmp->ifinblock: %d\n",tmp->ifinblock);
           printf("tmp->inblock: %d\n",tmp->inblock);
           tmp=tmp->nextt;
       }
       printf("退出GetRBrace()------\n");
   }

   void GetLBrace()
   {
       printf("进入GetLBrace()------\n");
       pSTable tmp=tablehead->nextt;
       while(tmp!=NULL)
       {
           if(tmp->ifinblock==OVER)
           {
               tmp=tmp->nextt;
               continue;
           }
           if(tmp->ifinblock==IN)//若当前标识符正在作用域中，又来了一个{，则inblock值应当+1，该标识符的作用域变成OUT
           {
               tmp->inblock++;
               blocktrans(tmp);
               tmp=tmp->nextt;
               continue;
           }
           if(tmp->ifinblock==OUT)//当前标识符的作用域被占用了，来了一个}，应判断是否要恢复其作用域
           {
               tmp->inblock++;
               blocktrans(tmp);
               tmp=tmp->nextt;
               continue;
           }
       }
       printf("退出GetLBrace()------\n");
   }


   void DEBUG_FOR_LAB4(std::string s){
       std::string DEBUG_INFO =  s + "\t" + std::to_string(yylineno)  + "\n";
       //s中存着单词类别和词素
       fputs(DEBUG_INFO.c_str(), yyout);
   }

   void DEBUG_FOR_LAB4_ID(std::string s,void* address){
       std::string DEBUG_INFO =  s + "\t" + "ID" + "\t" + std::to_string(yylineno)  + "\t";
       //s中存着单词类别和词素
       fputs(DEBUG_INFO.c_str(), yyout);
       fprintf(yyout,"%p",address);
       fprintf(yyout,"\n");
   }

   #endif
%}

blockcommentBegin "/*"
blockcommentElement .|\n
blockcommentEnd "*/"
%x BLOCKCOMMENT

LINECOMMENT \/\/[^\n]*

HEXADECIMAL ("0x"|"0X")([1-9a-fA-F][0-9a-fA-F]*|0)
OCTAL (0+)[1-7][0-7]*
DECIMAL ([1-9][0-9]*|0)
ID [[:alpha:]_][[:alpha:][:digit:]_]*

EOL (\r\n|\n|\r)
WHITE [\t ]





%%
{blockcommentBegin} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{blockcommentElement} {}
<BLOCKCOMMENT>{blockcommentEnd} {BEGIN INITIAL;}

{LINECOMMENT}

"int" {
   /*
   * Questions:
   *   Q1: Why we need to return INT in further labs?
   *   Q2: What is "INT" actually?
   */
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("INT\tint");
   #else
       return INT;
   #endif
}
"void" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("VOID\tvoid");
   #else
       return VOID;
   #endif
}
"while" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("WHILE\twhile");
   #else
       return WHILE;
   #endif

}
"if" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("IF\tif");
   #else
       return IF;
   #endif
};
"else" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("ELSE\telse");
   #else
       return ELSE;
   #endif
};
"return" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("RETURN\treturn");
   #else
       return RETURN;
   #endif
}

"=" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("ASSIGN\t=");
   #else
       return ASSIGN;
   #endif
}
"<" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("LESS\t<");
   #else
       return LESS;
   #endif
}
"+" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("ADD\t+");
   #else
       return ADD;
   #endif
}
"-" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("SUB\t-");
   #else
       return SUB;
   #endif
}
"*" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("MUL\t*");
   #else
       return MUL;
   #endif
}
"/" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("DIV\t/");
   #else
       return DIV;
   #endif
}
"%" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("MOD\t%");
   #else
       return MOD;
   #endif
}
";" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("SEMICOLON\t;");
   #else
       return SEMICOLON;
   #endif
}
"(" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("LPAREN\t(");
   #else
       return LPAREN;
   #endif
}
")" {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("RPAREN\t)");
   #else
   return RPAREN;
   #endif
}
"{" {
   #ifdef ONLY_FOR_LEX
       GetLBrace();
       DEBUG_FOR_LAB4("LBRACE\t{");
   #else
       return LBRACE;
   #endif
}
"}" {
   #ifdef ONLY_FOR_LEX
       GetRBrace();
       DEBUG_FOR_LAB4("RBRACE\t}");
   #else
       return RBRACE;
   #endif
}

{ID} {
   #ifdef ONLY_FOR_LEX

   char*newcisu=new char[yyleng+1];
   strcpy(newcisu,yytext);
   strcat(newcisu,"\0");
   printf("%s\n",newcisu);
   printf("---------------\n");

   pSTable newsymb=ifnewid(newcisu,(char*)"ID");
   if(newsymb!=NULL)
   {
       printf("%p",(void*)newsymb);
       printf("%s",newsymb->cisu);
   }
   else{
       newsymb=init(newcisu,(char*)"ID");
   }
   //pSTable newsymb2=init(newcisu,(char*)"ID");
   
   //pSTable newsym=new STable;

   //printf("(void*)newsymb2: %p\n",(void*)newsymb2);

   /*
   pSTable tmp=tablehead->nextt;
   tablehead->nextt=newsym;
   newsym->nextt=tmp;

   newsym->cisu=newcisu;
   newsym->tokentype=(char*)"ID";
   newsym->inblock=0;
   newsym->ifinblock=IN;
   newsym->lineno=yylineno;
   */

   /*
   if(newsymb2->nextt!=NULL)
   {  
       //printf("123%s",newsym->cisu);
       //printf("%s",newsym->nextt->cisu);
       //printf("%s",newsymb->cisu);
       //printf("%s",newsymb->nextt->cisu);
       printf("!=NULL: %s",newsymb2->cisu);
       printf("!=NULL: %s",newsymb2->nextt->cisu);
   }
   else{
       printf("%p",(void*)newsymb2);
       printf("%s",newsymb2->cisu);
       printf("%s","newsymb2下一个为NULL\n");
   }
   */

   printf("当前标识符作用域\n");
   printf("newsymb->cisu: %s\n",newsymb->cisu);
   printf("newsymb->ifinblock: %d\n",newsymb->ifinblock);
   printf("newsymb->inblock: %d\n",newsymb->inblock);

   printf("退出当前yytext\n------\n");
   DEBUG_FOR_LAB4_ID(newcisu,(void*)(newsymb));
   #else
       return ID;
   #endif
}

{DECIMAL} {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("000\tDECIMIAL");
   #else
       return DECIMAL;
   #endif
}

{OCTAL} {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("000\tOCTAL");
   #else
       return DECIMIAL;
   #endif
}


{HEXADECIMAL} {
   #ifdef ONLY_FOR_LEX
       DEBUG_FOR_LAB4("000\tHEXADECIMAL");
   #else
       return DECIMIAL;
   #endif
}

{EOL} yylineno++;

{WHITE}

%%

#ifdef ONLY_FOR_LEX

int main(int argc, char **argv){
   InitTable();

   if(!(yyin = fopen(argv[1], "r"))){
       fprintf(stderr, "No such file or directory: %s", argv[1]);
       exit(EXIT_FAILURE);
   }

   if(!(yyout = fopen(argv[2], "w"))){
       fprintf(stderr, "No such file or directory: %s", argv[2]);
       exit(EXIT_FAILURE);
   }

   yylex();
   fclose(yyin);
   fclose(yyout);

   return 0;
}

#endif