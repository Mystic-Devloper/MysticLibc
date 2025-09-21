/**
 * MysticLibc - Standard C Library.
 * 
 * @file crti.s (arm32)
 *
 * @brief C Runtime Routine Epilogue.
 */

.SYNTAX unified

.GLOBAL _init
.GLOBAL _fini

.SECTION .init, "ax"
.TYPE _init, %function
.ALIGN 2
_init:
    PUSH {R11, LR}            /* Save frame pointer and return address */
    MOV  R11, SP              /* Set frame pointer (r11 = sp) */

.SECTION .fini, "ax"
.TYPE _fini, %function
.ALIGN 2
_fini:
    PUSH {R11, LR}            /* Save frame pointer and return address */
    MOV  R11, SP              /* Set frame pointer (r11 = sp) */
