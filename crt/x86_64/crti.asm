; MysticLibc - Standard C Library.
; crti.asm (x86_64)
; Prolouge of C Runtime Routine.

GLOBAL _init
GLOBAL _fini

;  Prolouge section of _init
SECTION .init
_init:
    PUSH RBP              ; Push RBP register
    MOV  RBP, RSP         ; Move RSP to RBP

;  Prolouge section of _fini
SECTION .fini
_fini:
    PUSH RBP              ; Push RBP register
    MOV  RBP, RSP         ; Move RSP to RBP
