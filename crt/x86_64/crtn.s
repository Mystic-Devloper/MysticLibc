/**
 * MysticLibc - Standard C Library.
 *
 * @file crtn.s (x86_64)
 *
 * @brief Epilogue of C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX

/* Epilouge section of _init */
.SECTION .init
    POP RBP               /* Pop RBP register */
    RET                   /* Return */

/* Epilouge section of _fini */
.SECTION .fini
    POP RBP               /* Pop RBP register */
    RET                   /* Return */
