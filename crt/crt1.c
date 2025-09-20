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

__attribute__((weak)) void _init(void);
__attribute__((weak)) void _fini(void);

int __libc_start_main(int (*main)(),
		      int argc,
		      char** argv,
		      void (*init)(void),
		      void (*fini)(void),
		      void (*rtld_fini)(void));

/**
 * @brief Main _start_c function, called from _start.
 */
__attribute__((visibility("hidden"), noreturn))
void _start_c(long* p) {
    int argc = (int)p[0];
    char** argv = (char**)(p + 1);
    // char** envp = argv + argc + 1;  <-- Reconstructed in __libc_start_main
    __libc_start_main(main, argc, argv, _init, _fini, 0);

    // Should never reach here.
    __builtin_unreachable();
}
