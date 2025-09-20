/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.s (x86_64)
 *
 * @brief C Runtime Routine.
 */

.INTEL_SYNTAX NOPREFIX

.GLOBAL _start

.SECTION .TEXT
_start:
    XOR RBP, RBP              /* Clears RBP register */
    MOV RDI, RSP              /* Pass pointet to argc */

.WEAK   _DYNAMIC
.HIDDEN _DYNAMIC
    LEA RSI, [RIP + _DYNAMIC] /* Move address to RSI */
    AND RSP, -16              /* Align to 16 byte */
    CALL _start_c             /* Call main _start_c function */
