parser: y.tab.c lex.yy.c
	gcc -o parser y.tab.c
y.tab.c: CS315s21_team12.y lex.yy.c
	yacc CS315s21_team12.y
lex.yy.c: CS315s21_team12.l
	lex CS315s21_team12.l
clean:
	rm -f lex.yy.c y.tab.c parser