/**
 * MysticLibc - Standard C Library.
 * 
 * @file crtn.s (arm64)
 *
 * @brief C Runtime Routine Epilogue.
 */

/* Prologue section of init */
.section .init
    ldp x29, x30, sp, #16              /* Load frame pointer, link register and stack pointer back */
    ret                                /* Return */

/* Prologue section of init */
.section .fini
    ldp x29, x30, sp, #16              /* Load frame pointer, link register and stack pointer back */
    ret                                /* Return */
