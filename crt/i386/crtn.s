/**
 * MysticLibc - Standard C Library.
 *
 * @file crtn.asm (i386)
 *
 * @brief Epilouge of C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX
.CODE32                          /* Generate 32 bits instructions */

/* Epilouge section of _init */
.SECTION .init
    POP EBP               /* Pop EBP register */
    RET                   /* Return */

/* Epilouge section of _fini */
.SECTION .fini
    POP EBP               /* Pop EBP register */
    RET                   /* Return */
