/**
 * MysticLibc - Standard C Library.
 * 
 * @file crtn.s (arm32)
 *
 * @brief C Runtime Routine Epilogue.
 */

.SYNTAX unified

/* Prologue section of init */
.SECTION .init
    POP {R11, LR}          /* Pop frame pointer and return address */
    BX LR                  /* Branch and exchange in LR */

/* Prologue section of init */
.SECTION .fini
    POP {R11, LR}          /* Pop frame pointer and return address */
    BX LR                  /* Branch and exchange in LR */
