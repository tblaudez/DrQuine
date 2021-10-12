#include <stdio.h>
/*
	Comment outside main
*/
void function(char *data) {printf(data,data,10,34);}
int main() {
/*
	Comment inside main
*/
function("#include <stdio.h>%2$c/*%2$c	Comment outside main%2$c*/%2$cvoid function(char *data) {printf(data,data,10,34);}%2$cint main() {%2$c/*%2$c	Comment inside main%2$c*/%2$cfunction(%3$c%1$s%3$c);}");}