; MysticLibc - Standard C Library.
; crt1.asm (x86_64)
; C Runtime Routine.

GLOBAL _start
EXTERN _start_c

SECTION .text
_start:
    XOR RBP, RBP              ; Clears RBP register
    MOV RDI, RSP              ; Pass pointet to argc

.weak   _DYNAMIC
.hidden _DYNAMIC
    LEA RSI, [RIP + _DYNAMIC] ; Move address to RSI
    AND RSP, -16              ; Align to 16 byte
    CALL _start_c             ; Call main _start_c function
