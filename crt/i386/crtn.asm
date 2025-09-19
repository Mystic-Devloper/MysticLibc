; MysticLibc - Standard C Library.
; crtn.asm
; Epilouge of C Runtime Routine.

; Epilouge section of _init
SECTION .init
    POP RBP               ; Pop RBP register
    RET                   ; Return

; Epilouge section of _fini
SECTION .fini
    POP RBP               ; Pop RBP register
    RET                   ; Return
