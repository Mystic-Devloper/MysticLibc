/**
 * MysticLibc - Standard C Library.
 *
 * @file crtn.s (x86_64)
 *
 * @brief Epilogue of C Runtime Routine.
 */

/* Epilouge section of _init */
.section .init
    popq %rbp               /* Pop RBP register */
    ret                     /* Return */

/* Epilouge section of _fini */
.section .fini
    popq %rbp               /* Pop RBP register */
    ret                     /* Return */
