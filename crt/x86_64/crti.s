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
.SECTION .init, "ax"
.TYPE _init, %function
.ALIGN 16
_init:
    PUSH RBP              /* Push RBP register */
    MOV  RBP, RSP         /* Move RSP to RBP */

/* Prolouge section of _fini */
.SECTION .fini, "ax"
.TYPE _fini, %function
.ALIGN 16
_fini:
    PUSH RBP              /* Push RBP register */
    MOV  RBP, RSP         /* Move RSP to RBP */
