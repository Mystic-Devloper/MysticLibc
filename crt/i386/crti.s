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
.SECTION .init
_init:
    PUSH EBP              /* Push EBP register */
    MOV  EBP, ESP         /* Move ESP to EBP */

/* Prolouge section of _fini */
.SECTION .fini
_fini:
    PUSH EBP              /* Push EBP register */
    MOV  EBP, ESP         /* Move ESP to EBP */
