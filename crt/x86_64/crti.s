/**
 * MysticLibc - Standard C Library.
 *
 * @file crti.s (x86_64)
 *
 * @brief Prologue of C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX

.GLOBAL _init
.GLOBAL _fini

/* Prolouge section of _init */
.SECTION .init
_init:
    PUSH RBP              /* Push RBP register */
    MOV  RBP, RSP         /* Move RSP to RBP */

/* Prolouge section of _fini */
.SECTION .fini
_fini:
    PUSH RBP              /* Push RBP register */
    MOV  RBP, RSP         /* Move RSP to RBP */
