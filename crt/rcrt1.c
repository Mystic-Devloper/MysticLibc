/**
 * MysticLibc - Standard C Library.
 *
 * @file rcrt1.c
 *
 * @brief C Runtime Routine Initialization for static PIC.
 */

#define START "_start"
#define _dlstart_c _start_c
#include "../ldso/dlstart.c"

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
 * @brief Main _dls2 function.
 */
__attribute__((visibility("hidden"), noreturn))
void __dls2(unsigned char* base, size_t* sp) {
    int argc = *sp;
    char** argv = (char**)(sp + 1);
    // envp = argv + argc + 1;  <-- Reconstructed in __libc_start_main()
    __libc_start_main(main, argc, argv, _init, _fini, 0);

    // Should never reach here
    __builtin_unreachable();
}
