/**
 * MysticLibc - Standard C Library.
 *
 * @file crti.s (i386)
 *
 * @brief Prolouge of C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX
.CODE32                          /* Generate 32 bits instructions */

.GLOBAL _init
.GLOBAL _fini

/* Prolouge section of _init */
.SECTION .init, "ax"
.TYPE _init, %function
.ALIGN 16
_init:
    PUSH EBP              /* Push EBP register */
    MOV  EBP, ESP         /* Move ESP to EBP */

/* Prolouge section of _fini */
.SECTION .fini, "ax"
.TYPE _fini, %function
.ALIGN 16
_fini:
    PUSH EBP              /* Push EBP register */
    MOV  EBP, ESP         /* Move ESP to EBP */
