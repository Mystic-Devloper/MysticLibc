/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (i386)
 *
 * @brief C Runtime Routine.
 */

.code32                          /* Generate 32 bits instructions */

.global _start

.section .text, "ax"
.type _start, @function
_start:
    xorl  %ebp, %ebp                /* Clears EBP register */
    movl  %esp, %eax                /* Pass pointer to argc */
    andl  $-16, %esp                /* Align to 16 byte */
    pushl %eax                      /* Push EAX */
    pushl %eax                      /* Push EAX */

.weak   _DYNAMIC
.hidden _DYNAMIC
    call 1f                         /* Call forward label */

1:
    addl  $_DYNAMIC - 1b, (%esp)    /* ESP = &_DYNAMIC */
    pushl %eax                      /* Push EAX */
    call  _start_c                  /* Call main _start_c function */
