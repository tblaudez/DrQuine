section .data
data: db "section .data%3$cdata: db %4$c%1$s%4$c, 0%3$cfilename_buffer: db 16%3$cfilename: db %4$cSully_%5$cd.asm%4$c, 0%3$copen_mode: db %4$cw+%4$c, 0%3$ccommand_buffer: db 64%3$ccommand: db %4$cclang -Wall -Wextra -Werror Sully_%5$c1$d.c -o Sully_%5$c1$d && ./Sully_%5$c1$d%4$c, 0%3$c%3$csection .text%3$cglobal _main%3$cextern _fopen%3$cextern _fclose%3$cextern _sprintf%3$cextern _fprintf%3$cextern _system%3$c%3$c_main:%3$cmov r10, %2$d%3$ccmp r10, 0%3$cjle _done%3$cdec r10%3$cpush r10%3$c%3$clea rdi, [rel filename_buffer]%3$clea rsi, [rel filename]%3$cmov rdx, r10%3$ccall _sprintf%3$c%3$clea rdi, [rel filename_buffer]%3$clea rsi, [rel open_mode]%3$ccall _fopen%3$c%3$cmov rdi, rax%3$clea rsi, [rel data]%3$clea rdx, [rel data]%3$cpop rcx%3$cpush rax%3$cmov r8, 10%3$cmov r9, 34%3$cpush rdi%3$cpush 37%3$ccall _fprintf%3$c%3$cpop rdi%3$cpop rdi%3$cpop rdi%3$csub rsp, 8%3$ccall _fclose%3$cadd rsp, 8%3$c%3$c_done:%3$cret", 0
filename_buffer: db 16
filename: db "Sully_%d.asm", 0
open_mode: db "w+", 0
command_buffer: db 64
command: db "clang -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d", 0

section .text
global _main
extern _fopen
extern _fclose
extern _sprintf
extern _fprintf
extern _system

_main:
mov r10, 5
cmp r10, 0
jle _done
dec r10
push r10

lea rdi, [rel filename_buffer]
lea rsi, [rel filename]
mov rdx, r10
call _sprintf

lea rdi, [rel filename_buffer]
lea rsi, [rel open_mode]
call _fopen

mov rdi, rax
lea rsi, [rel data]
lea rdx, [rel data]
pop rcx
push rax
mov r8, 10
mov r9, 34
push rdi
push 37
call _fprintf

pop rdi
pop rdi
pop rdi
sub rsp, 8
call _fclose
add rsp, 8

_done:
ret