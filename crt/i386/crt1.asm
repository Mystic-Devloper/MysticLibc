; MysticLibc - Standard C Library.
; crt1.asm
; C Runtime Routine.

GLOBAL _start
EXTERN _start_c

SECTION .text
_start:
    XOR EBP, EBP                 ; Clears EBP register
    MOV EAX, ESP                 ; Pass pointet to argc

.weak _DYNAMIC
.hidden _DYNAMIC
    CALL get_eip

get_eip:
    POP ESI                      ; Pop ESI register
    ADD ESI, _DYNAMIC - get_eip  ; ESI = &_DYNAMIC

    AND ESP, -16                 ; Align to 16 byte
    PUSH EAX                     ; Push EAX
    CALL _start_c                ; Call main _start_c function
