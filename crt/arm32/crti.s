/**
 * MysticLibc - Standard C Library.
 * 
 * @file crti.s (arm32)
 *
 * @brief C Runtime Routine Initialization stub.
 */

.SYNTAX unified
.SECTION .TEXT

.GLOBAL _init
.GLOBAL _fini

.SECTION .init, "ax"
.TYPE _init, %function
.ALIGN 2
_init:
    PUSH {r11, lr}            /* Save frame pointer and return address */
    ADD  r11, SP, #0          /* Set frame pointer (r11 = sp) */

.SECTION .fini, "ax"
.TYPE _fini, %function
.ALIGN 2
_fini:
    PUSH {r11, lr}            /* Save frame pointer and return address */
    ADD  r11, SP, #0          /* Set frame pointer (r11 = sp) */
