/**
 * MysticLibc - Standard C Library.
 * 
 * @file crtn.s (arm32)
 *
 * @brief C Runtime Routine Prologue.
 */

.SYNTAX unified

.SECTION .init
    POP {R11, LR}          /* Pop frame pointer and return address */
    BX LR                  /* Branch and exchange in LR */

.SECTION .fini
    POP {R11, LR}          /* Pop frame pointer and return address */
    BX LR                  /* Branch and exchange in LR */
