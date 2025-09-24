/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (x86_64)
 *
 * @brief C Runtime Routine.
 */

.global _start

.section .text, "ax"
.type _start, @function
_start:
    xorq %rbp, %rbp              /* Clears RBP register */
    movq %rsp, %rdi              /* Pass pointet to argc */

.weak   _DYNAMIC
.hidden _DYNAMIC
    leaq _DYNAMIC(%rip), %rsi     /* Move address to RSI */
    andq $-16, %rsp               /* Align to 16 byte */
    call _start_c                 /* Call main _start_c function */
    hlt                           /* Halt if somehow _start_c returns */
