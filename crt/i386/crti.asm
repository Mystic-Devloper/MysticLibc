; MysticLibc - Standard C Library.
; crti.asm (i386)
; Prolouge of C Runtime Routine.

[BITS 32]

GLOBAL _init
GLOBAL _fini

;  Prolouge section of _init
SECTION .init
_init:
    PUSH EBP              ; Push EBP register
    MOV  EBP, ESP         ; Move ESP to EBP

;  Prolouge section of _fini
SECTION .fini
_fini:
    PUSH EBP              ; Push EBP register
    MOV  EBP, ESP         ; Move ESP to EBP
