%option main
hashtag 		\#
double_hashtag		\#\#
main_word		funct\_main
begin_word		begin
end_word		end
function		funct\_{identifier}
void_return		void
int_type		int
double_type		double
string_type		string
char_type		char
bool_type		bool
const_identifier	const
type			bool_type|char_type|string_type|double_type|int_type
if_stmt			if
else_stmt		else
elif_stmt		elif
for_stmt		for
while_stmt		while
do_stmt			do
return_stmt		return
input_stmt		eggin
output_stmt		eggout
pow_stmt		pow
max_stmt 		max
min_stmt		min
underscore		\_

newline			\n
true_bool		true
false_bool		false

line_comment		{double_hashtag}([^\n])*\n
comment			{hashtag}([^\#])*{hashtag}

digit			[0-9]
capital_letter		[A-Z]
lower_letter		[a-z]
letter			{capital_letter}|{lower_letter}
identifier		{lower_letter}({letter}|{digit}|{underscore})*


string_stmt 		\"(.)*\"
bool_stmt		{true_bool}|{false_bool}
int_stmt		[+-]?{digit}+
double_stmt 		[+-]?{digit}*(\.)?{digit}+
char_stmt		\'[^\\\']\'
%%
\!			printf("NOT ");
\(            		printf("LP ");
\)            		printf("RP ");
\{            		printf("LCB ");
\}            		printf("RCB ");
\[            		printf("LSB ");
\]            		printf("RSB ");
\.            		printf("DOT ");
\,            		printf("COMMA ");
\;            		printf("SEMICOLON ");
\=            		printf("ASSIGN_OP ");
\=\=			printf("EQUAL_OP ");
\!\=			printf("NOT_EQUAL_OP ");
\"            		printf("STRING_IDENTIFIER ");
\'            		printf("CHAR_IDENTIFIER ");
\+        		printf("PLUS ");
\-        		printf("MINUS ");
\*			printf("MULTIPLY ");
\%			printf("PERCENT ");
\>			printf("GT ");
\<			printf("LT ");
\<\=			printf("LTE ");
\>\=			printf("GTE ");
\&			printf("AND ");
\|			printf("OR ");
{main_word}		printf("MAIN ");
{begin_word}		printf("BEGIN ");
{end_word}		printf("END ");
{newline}       	printf("NEW_LINE \n");
{underscore}		printf("UNDERSCORE ");
{input_stmt}		printf("EGG_IN ");
{output_stmt}		printf("EGG_OUT ");
{int_type}		printf("INT ");
{double_type}		printf("DOUBLE ");
{string_type}		printf("STRING ");
{char_type}		printf("CHAR ");
{bool_type}		printf("BOOL ");
{if_stmt}		printf("IF ");
{else_stmt}		printf("ELSE ");
{elif_stmt}		printf("ELIF ");
{for_stmt}		printf("FOR ");
{while_stmt}		printf("WHILE ");
{do_stmt}		printf("DO ");
{function}		printf("FUNCTION_IDENTIFIER ");
{void_return}		printf("VOID ");
{return_stmt}		printf("RETURN ");
{pow_stmt}		printf("POW ");
{max_stmt}		printf("MAX ");
{min_stmt}		printf("MIN ");
{true_bool}		printf("TRUE ");
{false_bool}		printf("FALSE ");
{string_stmt} 		printf("STRING_STMT ");
{const_identifier}	printf("CONST ");
{int_stmt}		printf("INT_STMT ");
{double_stmt} 		printf("DOUBLE_STMT ");
{char_stmt}		printf("CHAR_STMT ");
{identifier}		printf("IDENTIFIER ");
{comment}		printf("COMMENT ");
{line_comment}		printf("LINE_COMMENT ");
.	          	;
