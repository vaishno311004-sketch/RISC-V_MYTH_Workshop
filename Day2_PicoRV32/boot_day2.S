.section .text
.globl _start

_start:
    li sp, 0x003ff000
    call main

stop:
    ebreak
    j stop
