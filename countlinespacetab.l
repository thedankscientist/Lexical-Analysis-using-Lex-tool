%{ 
	int n, w, c; 
%} 
%%
\n { n++; } 
[ '\n']+ { w++; c= c + yyleng; }  
. c++; 
%% 
int yywrap(void) 
{ 
	return 1; 
} 
int main() 
{ 
	extern FILE* yyin; 
	yyin = fopen("input.txt", "r"); 
	yylex(); 
	printf("Line= %d word=%d total char=%d \n", n+1, (w+n+1), c); 
} 
