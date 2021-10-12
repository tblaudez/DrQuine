; Comment outside main

section .data
data: db "; Comment outside main%2$csection .data%2$cdata:%2$cdb %3$c%1$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _printf%2$c_print:%2$clea rdi, [rel data]%2$clea rsi, [rel data]%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$cret%2$c_main:%2$c; Comment inside main%2$ccall _print%2$cret", 0

section .text
global _main
extern _printf

_print:
lea rdi, [rel data]
lea rsi, [rel data]
mov rdx, 10
mov rcx, 34
call _printf
ret

_main:
; Comment inside main
call _print
ret