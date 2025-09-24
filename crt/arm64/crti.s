/**
 * MysticLibc - Standard C Library.
 * 
 * @file crti.s (arm64)
 *
 * @brief C Runtime Routine Prologue.
 */

.global _init
.global _fini

/* Prologue section of init */
.section .init, "ax"
.type _init, @function
.align 2
_init:
    stp x29, x30, [sp, #-16]!      /* Store frame pointer and link register */
    mov x29, sp                    /* Move stack pointet to frame pointer */

/* Prologue section of fini */
.section .fini, "ax"
.type _fini, @function
.align 2
_fini:
    stp x29, x30, [sp, #-16]!      /* Store frame pointer and link register */
    mov x29, sp                    /* Move stack pointet to frame pointer */
