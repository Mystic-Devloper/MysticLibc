/**
 * MysticLibc - Standard C Library.
 * crti.asm (arm32)
 * C Runtime Routine Initialization.
 */



.TEXT
.SECTION .init, "ax"
.GLOBAL _init
.TYPE _init, %function
.ALIGN 2
_init:
    PUSH {r11, lr}            /* Save frame pointer and return address */
    ADD  r11, SP, #0          /* Set frame pointer (r11 = sp) */

.SECTION .fini, "ax"
.GLOBAL _fini
.TYPE _fini, %function
.ALIGN 2
    
