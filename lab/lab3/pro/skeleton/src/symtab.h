#include <string.h>

/* type macro declaration */
#define TYPE_INT 0
#define TYPE_FLOAT 1
#define TYPE_FUNC 2
#define TYPE_VOID 3
#define TYPE_UDEF 4

/* attribute macro declaration */
#define ATTR_CONST 0
#define ATTR_UDEF 1

/* max token size */
#define MAX_TOKEN_SIZE 32

/* max hash table size */
#define MAX_HASH_TABLE_SIZE 223

/* references of a variable */
struct RefList
{
    int type;
    int attr;
    int lineno;
    int offset;
    struct RefList* next;
};

/* symbol node */
struct SymbolList
{
    char* name; // name of ID
    int type;   // type of ID
    int attr;   // attributes: const or not
    float value; // value of ID
    int scope;  // scope of ID
    int lineno;
    int offset;
    struct RefList* ref; // reference list
    struct Symbollist* next;
};

/* hash table */
struct SymbolList** hash_table;

/* global: current scope */
int curr_scope = 0;

void symtb_init();

unsigned int hash(char* name);

void symtb_insert(char* name, int type, int attr, int lineno, int offset);

struct SymbolList* lookup(char* name);

struct SymbolList* lookup_in_all_scope(char* name, int scope);

void exit_scope();

void enter_scope();