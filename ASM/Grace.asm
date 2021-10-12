; The one and only comment

%define DATA "; The one and only comment%2$c%2$c%4$cdefine DATA %3$c%1$s%3$c%2$c%4$cdefine FILENAME %3$cGrace_kid.asm%3$c%2$c%2$csection .data%2$cdata: db DATA, 0%2$cfilename: db FILENAME, 0%2$copen_mode: db %3$cw+%3$c, 0%2$c%2$csection .text%2$cglobal _main%2$cextern _fprintf%2$cextern _fopen%2$cextern _fclose%2$c%2$c%4$cmacro GRACE 1%2$c_main:%2$clea rdi, [rel filename]%2$clea rsi, [rel open_mode]%2$csub rsp, 8%2$ccall _fopen%2$cadd rsp, 8%2$cpush rax%2$cmov rdi, rax%2$clea rsi, [rel data]%2$clea rdx, [rel data]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, 37%2$ccall _fprintf%2$cpop rdi%2$csub rsp, 8%2$ccall _fclose%2$cadd rsp, 8%2$cret%2$c%4$cendmacro%2$c%2$cGRACE DATA"
%define FILENAME "Grace_kid.asm"

section .data
data: db DATA, 0
filename: db FILENAME, 0
open_mode: db "w+", 0

section .text
global _main
extern _fprintf
extern _fopen
extern _fclose

%macro GRACE 1
_main:
lea rdi, [rel filename]
lea rsi, [rel open_mode]
sub rsp, 8
call _fopen
add rsp, 8
push rax
mov rdi, rax
lea rsi, [rel data]
lea rdx, [rel data]
mov rcx, 10
mov r8, 34
mov r9, 37
call _fprintf
pop rdi
sub rsp, 8
call _fclose
add rsp, 8
ret
%endmacro

GRACE DATA