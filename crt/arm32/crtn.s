/**
 * MysticLibc - Standard C Library.
 * 
 * @file crtn.s (arm32)
 *
 * @brief C Runtime Routine Epilogue.
 */

.syntax unified

/* Prologue section of init */
.section .init
    pop {r11, lr}          /* Pop frame pointer and return address */
    bx lr                  /* Branch and exchange in LR */

/* Prologue section of init */
.section .fini
    pop {r11, lr}          /* Pop frame pointer and return address */
    bx lr                  /* Branch and exchange in LR */
