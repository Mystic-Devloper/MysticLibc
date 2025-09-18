; MysticLibc - Standard C Library.
; crt1.asm
; C Runtime Routine.

GLOBAL _start
EXTERN __libc_start_main
EXTERN main
EXTERN _init
EXTERN _fini

SECTION .text
_start:
    ; Extracr argc, argv and envp
    MOV RSI, [RSP]                ; RSI = argc
    LEA RDX, [RSP + 8]            ; RDX = argv pointer
    LEA RCX, [RSP + 8 + RDI * 8]  ; RCX = envp pointer
    
    ; Call libc start
    MOV RDI, main                 ; First arg = main
    MOV RSI, [RSP]                ; argc
    LEA RDX, [RSP + 8]            ; argv
    LEA RCX, [_init]              ; Init function
    LEA R8, [_fini]               ; Fini function
    XOR R9, R9                    ; rtld_fini = 0
    CALL __libc_start_main

    ; Fallback: exit syscall if __mystic_libc_start_main returns
    MOV RDI, RAX                  ; Return value from main
    MOV RAX, 60                   ; sys_exit
    SYSCALL
