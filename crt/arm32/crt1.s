/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (arm32)
 *
 * @brief C Runtime Routine.
 */

.syntax unified

.global _start

.section .text, "ax"
.type _start, @function
_start:
    mov fp, #0                      /* Clear frame pointer */
    mov lr, #0                      /* Clear link register */
    ldr a2, 1f                      /* Load forward label to a2 */
    add a2, pc, a2                  /* Add pc and a2 and store in a2 */
    mov a1, sp                      /* Move stack pointer to a1 */

2:
    and ip, a1, #-16                /* Align to 16 bytes */
    mov sp, ip                      /* Copy stack pointer */
    bl _start_c                     /* Call main C function */

.weak   _DYNAMIC
.hidden _DYNAMIC
.align 2

1:
    .word _DYNAMIC - 2b             /* Calculate relative position of _DYNAMIC */

    /* Should never reach here */
    bl abort                        /* Branch-link to abort */
