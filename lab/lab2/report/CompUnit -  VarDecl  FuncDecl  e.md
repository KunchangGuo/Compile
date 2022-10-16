**CompUnit - > CompUnit Decl | e**

**Decl -> VarDecl | FuncDecl**

**VarDecl -> VarType VarDefList ';'**

**VarType -> 'int' | 'float'**

**VarDefList -> VarDef | VarDef, VarDefList**

**VarDef -> Ident '=' Exp**

**FuncDecl -> FuncType Ident '(' VarDefList ')' Block**

**FuncType -> 'void' | 'int' | 'float'**

**Block -> '{' BlockItem '}'**

**BlockItem -> VarDecl | FuncDecl | Stmt**

**Stmt -> Ident '=' exp ';' | Block | 'if' '(' Cond ')' Stmt 'else' Stmt | 'while' '( ' Cond ')' Stmt | 'break' ';' | 'continue' ';' | 'return' Exp ';'** 

**Cond -> LOrExp**

**LOrExp -> LAndExp | LAndExp '||' LOrExp**

**LAndExp -> EqExp | LAndExp '&&' EqExp**

**EqExp -> RelExp | EqExp ('==' | '!=') RelExp**

**RelExp -> AddExp | RelExp ('>' | '<' | '>=' | '<=') AddExp**

**AddExp -> MulExp | AddExp ('+' | '-') MulExp**

**MulExp -> UnaryExp | MulExp ('*' | '/') UnaryExp**

**Exp -> AddExp**

**AddExp -> MulExp | AddExp ('+' | '-') MulExp**

**MulExp -> UnaryExp | MulExp ('*' | '/') UnaryExp**

**UnaryExp -> PrimaryExp | UnaryOp UnaryExp**

**PrimaryExp -> '('Exp')' | Var | Number**

**UnaryOp -> '+' | '-' | '!'**

VarList -> Var | Var, VarList

Ident -> [a-zA-Z_ ] [a-zA-Z0-9_]*

Number -> [+|-]?[1-9]?[0-9]+ | [+|-]?[1-9]?[0-9]+[.]?[0-9]+