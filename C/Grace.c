/*
	The one and only comment
*/
#include <stdio.h>
#define FILENAME "Grace_kid.c"
#define OPEN_MODE "w+"
#define GRACE(data)int main() {FILE *file=fopen(FILENAME,OPEN_MODE);fprintf(file,data,data,10,34);fclose(file);}
GRACE("/*%2$c	The one and only comment%2$c*/%2$c#include <stdio.h>%2$c#define FILENAME %3$cGrace_kid.c%3$c%2$c#define OPEN_MODE %3$cw+%3$c%2$c#define GRACE(data)int main() {FILE *file=fopen(FILENAME,OPEN_MODE);fprintf(file,data,data,10,34);fclose(file);}%2$cGRACE(%3$c%1$s%3$c)")