#include <stdio.h>
#include <stdlib.h>
int main() {
int i=5;
char data[]="#include <stdio.h>%3$c#include <stdlib.h>%3$cint main() {%3$cint i=%2$d;%3$cchar data[]=%4$c%1$s%4$c;%3$cchar filename[16];%3$csprintf(filename,%4$cSully_%5$cd.c%4$c,i-1);%3$cFILE *file=fopen(filename,%4$cw+%4$c);%3$cfprintf(file,data,data,i-1,10,34,37);%3$cfclose(file);%3$cchar command[64];%3$csprintf(command,%4$cclang -Wall -Wextra -Werror Sully_%5$c1$d.c -o Sully_%5$c1$d%4$c,i-1);%3$csystem(command);%3$cif (i<=0) return 0;%3$csprintf(command,%4$c./Sully_%5$cd%4$c,i-1);%3$csystem(command);}";
char filename[16];
sprintf(filename,"Sully_%d.c",i-1);
FILE *file=fopen(filename,"w+");
fprintf(file,data,data,i-1,10,34,37);
fclose(file);
char command[64];
sprintf(command,"clang -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d",i-1);
system(command);
if (i<=0) return 0;
sprintf(command,"./Sully_%d",i-1);
system(command);}