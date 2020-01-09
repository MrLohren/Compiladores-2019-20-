#include <FlexLexer.h>
#include <iostream>
#include <fstream>

using namespace std;

int main(){
    cout << "#################" << endl;
    cout << "ANALIZADOR LEXICO" << endl;
    cout << "#################" << endl;

    cout << "Ingrese comandos: \n";
    yyFlexLexer* lexer = new yyFlexLexer();
    while (lexer->yylex() != 0)
        ;
    return 0;
}