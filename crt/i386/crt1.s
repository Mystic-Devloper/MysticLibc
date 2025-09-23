/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (i386)
 *
 * @brief C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX
.CODE32                          /* Generate 32 bits instructions */

.GLOBAL _start

.SECTION .TEXT
.TYPE _start, %function
_start:
    XOR EBP, EBP                 /* Clears EBP register */
    MOV EAX, ESP                 /* Pass pointet to argc */
    AND  ESP, -16                /* Align to 16 byte */
    PUSH EAX                     /* Push EAX */
    PUSH EAX                     /* Push EAX */

.WEAK   _DYNAMIC
.HIDDEN _DYNAMIC
    CALL 1f                      /* Call forward label */

1:
    ADD ESP, _DYNAMIC - 1b       /* ESP = &_DYNAMIC */
    PUSH EAX                     /* Push EAX */
    CALL _start_c                /* Call main _start_c function */
