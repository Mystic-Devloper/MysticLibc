/**
 * MysticLibc - Standard C Library.
 *
 * @file crt1.c
 *
 * @brief C Runtime Routine Initialization.
 */

#include <features.h>
#include "libc.h"

#define START "_start"

/**
 * @breif Extern Defs.
 */
int main();
__attribute__((weak)) void _init();
__attribute__((weak)) void _fini();
int __libc_start_main(int (*)(), int, char**,
		      void (*)(), void (*)(), void (*)());

/**
 * @brief Main _start_c function, called from _start.
 */
__attribute__((hidden)) void _start_c(long* p) {
    int argc = p[0];
    char** argv = (void*)(p + 1);
    char** envp = argv + argc + 1; // added for completeness
    __libc_start_main(main, argc, argv, _init, _fini, 0);
}
