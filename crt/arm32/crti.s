/**
 * MysticLibc - Standard C Library.
 * 
 * @file crti.s (arm32)
 *
 * @brief C Runtime Routine Prologue.
 */

.syntax unified

.global _init
.global _fini

/* Prologue section of init */
.section .init, "ax"
.type _init, %function
.align 2
_init:
    push {r11, lr}            /* Save frame pointer and return address */
    mov  r11, sp              /* Set frame pointer (r11 = sp) */

/* Prologue section of fini */
.section .fini, "ax"
.type _fini, %function
.align 2
_fini:
    push {r11, lr}            /* Save frame pointer and return address */
    mov  r11, sp              /* Set frame pointer (r11 = sp) */
