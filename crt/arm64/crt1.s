/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (arm64)
 *
 * @brief C Runtime Routine.
 */

.global _start

.section .text, "ax"
.type _start, @function
_start:
    mov x29, #0                      /* Clear frame pointer */
    mov x30, #0                      /* Clear link register */
    mov x0, sp                       /* Move stack pointer to a1 */

.weak   _DYNAMIC
.hidden _DYNAMIC
    adrp x1, _DYNAMIC                 /* Load address page of _DYNAMIC */
    add x1, x1, #:lo12:_DYNAMIC       /* Add the lower 12 bits of _DYNAMIC */
    and sp, x0, #-16                  /* Align stack pointer and x0 */
    b   _start_c                      /* Call main C function */
    
    /* Should never reach here */
    bl abort                        /* Branch-link to abort */
