section .data
data: db "section .data%3$cdata: db %4$c%1$s%4$c, 0%3$cfilename_buffer: db 16%3$cfilename: db %4$cSully_%5$cd.asm%4$c, 0%3$copen_mode: db %4$cw+%4$c, 0%3$ccommand_buffer: db 64%3$ccommand: db %4$cnasm -fmacho64 Sully_%5$c1$d.asm && clang Sully_%5$c1$d.o -o Sully_%5$c1$d && ./Sully_%5$c1$d%4$c, 0%3$c%3$csection .text%3$cglobal _main%3$cextern _fopen%3$cextern _fclose%3$cextern _sprintf%3$cextern _fprintf%3$cextern _system%3$c%3$c_main:%3$cpush r12%3$cmov r12, %2$d%3$ccmp r12, 0%3$cjle _done%3$cdec r12%3$c%3$clea rdi, [rel filename_buffer]%3$clea rsi, [rel filename]%3$cmov rdx, r12%3$ccall _sprintf%3$c%3$clea rdi, [rel filename_buffer]%3$clea rsi, [rel open_mode]%3$ccall _fopen%3$cpush rax%3$c%3$cmov rdi, rax%3$clea rsi, [rel data]%3$clea rdx, [rel data]%3$cmov rcx, r12%3$cmov r8, 10%3$cmov r9, 34%3$cpush 37%3$ccall _fprintf%3$cpop rdi%3$c%3$cpop rdi%3$ccall _fclose%3$c%3$clea rdi, [rel command_buffer]%3$clea rsi, [rel command]%3$cmov rdx, r12%3$ccall _sprintf%3$c%3$clea rdi, [rel command_buffer]%3$ccall _system%3$c%3$c_done:%3$cpop r12%3$cret", 0
filename_buffer: db 16
filename: db "Sully_%d.asm", 0
open_mode: db "w+", 0
command_buffer: db 64
command: db "nasm -fmacho64 Sully_%1$d.asm && clang Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0

section .text
global _main
extern _fopen
extern _fclose
extern _sprintf
extern _fprintf
extern _system

_main:
push r12
mov r12, 5
cmp r12, 0
jle _done
dec r12

lea rdi, [rel filename_buffer]
lea rsi, [rel filename]
mov rdx, r12
call _sprintf

lea rdi, [rel filename_buffer]
lea rsi, [rel open_mode]
call _fopen
push rax

mov rdi, rax
lea rsi, [rel data]
lea rdx, [rel data]
mov rcx, r12
mov r8, 10
mov r9, 34
push 37
call _fprintf
pop rdi

pop rdi
call _fclose

lea rdi, [rel command_buffer]
lea rsi, [rel command]
mov rdx, r12
call _sprintf

lea rdi, [rel command_buffer]
call _system

_done:
pop r12
ret