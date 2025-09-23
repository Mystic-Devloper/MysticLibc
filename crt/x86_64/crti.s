/**
 * MysticLibc - Standard C Library.
 *
 * @file crti.s (x86_64)
 *
 * @brief Prologue of C Runtime Routine.
 */

.global _init
.global _fini

/* Prolouge section of _init */
.section .init, "ax"
.type _init, %function
.align 16
_init:
    pushq %rbp               /* Push RBP register */
    movq  %rsp, %rpb         /* Move RSP to RBP */

/* Prolouge section of _fini */
.section .fini, "ax"
.type _fini, %function
.align 16
_fini:
    pushq %rbp               /* Push RBP register */
    movq  %rsp, %rpb         /* Move RSP to RBP */
