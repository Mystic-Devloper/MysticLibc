/**
 * MysticLibc - Standard C Library.
 *
 * @file rcrt1.c
 *
 * @brief C Runtime Routine Initialization for static PIC.
 */

#define START "_start"
#define _dl_start_c _start_c
#include "../ldso/dlstart.c"

/**
 * @breif Extern Defs.
 */
int main();
__attribute__((weak)) void _init();
__attribute__((weak)) void _fini();
int __libc_start_main(int (*)(), int, char**,
		      void (*)(), void (*)(), void (*)());

/**
 * @brief Main _dls2 function, called from _start (calls _start_c).
 */
__attribute__((hidden)) void _dls2(unsigned char* base, size_t* sp) {
    __libc_start_main(main, *sp, (void *)(sp + 1), _init, _fini, 0);
}
