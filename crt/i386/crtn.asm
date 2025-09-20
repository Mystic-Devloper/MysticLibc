; MysticLibc - Standard C Library.
; crtn.asm (i386)
; Epilouge of C Runtime Routine.

; Epilouge section of _init
SECTION .init
    POP EBP               ; Pop EBP register
    RET                   ; Return

; Epilouge section of _fini
SECTION .fini
    POP EBP               ; Pop EBP register
    RET                   ; Return
