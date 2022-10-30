#include "symtab.h"

void symtb_init()
{
    hash_table = (struct SymbolList**)malloc(sizeof(struct SymbolList*) * MAX_HASH_TABLE_SIZE);
    for (int i = 0; i < MAX_HASH_TABLE_SIZE; i++)
    {
        hash_table[i] = NULL;
    }
}

unsigned int symtb_hash(char* name)
{
    unsigned int hashval=0;
    for(; *name != '\0'; name++)
        hashval += *name % 11 + (*name << 3) - *name;
    return hashval %= MAX_HASH_TABLE_SIZE;
}

void symtb_insert(char* name, int type, int attr, int lineno, int offset)
{
    unsigned int hashval = symtb_hash(name);
    struct SymbolList* node = hash_table[hashval];
    while((node!=NULL)&&(strcmp(name, node->name)!=0))
        node = (struct SymbolList*)node->next;
    
    if(node == NULL)
    {
        node = (struct SymbolList*)malloc(sizeof(struct SymbolList));
        node->name = (char*)malloc(sizeof(char) * MAX_TOKEN_SIZE);
        strcpy(node->name, name);
        node->type = type;
        node->attr = attr;
        node->scope = curr_scope;
        node->lineno = lineno;
        node->offset = offset;
        node->next = NULL;
        hash_table[hashval] = node;
    }
    else
    {
        node->scope = curr_scope;
        struct RefList* ref = node->ref;
        while(ref->next!=NULL)
            ref = ref->next;
        ref->next = (struct RefList*)malloc(sizeof(struct RefList));
        ref->next->type = type;
        ref->next->attr = attr;
        ref->next->lineno = lineno;
        ref->next->offset = offset;
        ref->next->next = NULL;
    }
}

struct SymbolList* lookup(char* name)
{
    unsigned int hashval = symtb_hash(name);
    struct SymbolList* node = hash_table[hashval];
    while((node!=NULL)&&(strcmp(name, node->name)!=0))
        node = (struct SymbolList*)node->next;
    return node;
}

struct SymbolList* lookup_in_all_scope(char* name, int scope)
{
    unsigned int hashval = symtb_hash(name);
    struct SymbolList* node = hash_table[hashval];
    while((node!=NULL)&&(strcmp(name, node->name)!=0)&&node->scope!=scope)
        node = (struct SymbolList*)node->next;
    return node;
}

void exit_scope()
{
    if(curr_scope > 0)
        curr_scope--;
}

void enter_scope()
{
    curr_scope++;
}