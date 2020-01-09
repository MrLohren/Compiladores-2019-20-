%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%option c++
%option outfile="Scanner.cpp"
%option case-sensitive
%option noyywrap

DIGITO [0-9]
LETRA [a-zA-ZñÑ]

ENTERO {DIGITO}+ 
NOMBRE "L"{DIGITO}
IDENTIFICADOR {LETRA}({LETRA}|{DIGITO}|"_")*

DELIMITADOR [\t\r\f" "]

%%

"empiece"   {printf("Palabra reservada: %s\n",yytext);}
"dato"      {printf("Palabra reservada: %s\n",yytext);}
"hasta"     {printf("Palabra reservada: %s\n",yytext);}
"vez"       {printf("Palabra reservada: %s\n",yytext);}
"asigna"    {printf("Palabra reservada: %s\n",yytext);}
"inserta"   {printf("Palabra reservada: %s\n",yytext);}
"elimina"   {printf("Palabra reservada: %s\n",yytext);}
"("         {printf("Simbolo: %s\n", yytext);}
")"         {printf("Simbolo: %s\n", yytext);}
","         {printf("Simbolo: %s\n", yytext);}
"="         {printf("Simbolo: %s\n", yytext);} 
{ENTERO}    {printf("Numero entero %s\n",yytext);}
{NOMBRE}    {printf("Nombre: %s\n", yytext);}
{IDENTIFICADOR} {printf("Identificador %s\n",yytext);}

{DELIMITADOR} {}
.             {printf("ERROR LEXICO\n");}

%%