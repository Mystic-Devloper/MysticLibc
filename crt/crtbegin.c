/**
 * MysticLibc - Standard C Library.
 *
 * @file crtbegin.c
 *
 * @brief C Runtime Routine Initialization.
 */

/**
 * @brief init/fini array start markers
 * These ensure that arrays are well-defined even if empty.
 */
void (*__init_array_start[])(void)
    __attribute__((section(".init_array"), used)) = { };

void (*__fini_array_start[])(void)
    __attribute__((section(".fini_array"), used)) = { };

/**
 * @brief Extern declarations for the array ends.
 */
extern void (*__init_array_end[])(void);
extern void (*__fini_array_end[])(void);

/**
 * @brief _init function implementation.
 */
void _init(void) {
    void (**p)(void) = (void)&__init_array_start; 
    while (p < (void)&__init_array_end) {
	p += sizeof(void(*)(void));
        if (*(void(**)(void))p) {
            (*(void(**)(void))p)();
        }
    }
}

/**
 * @brief _fini function implementation.
 */
void _fini(void) {
    void (**p)(void) = (void)&__fini_array_end;
    while (p > (void)&__fini_array_start) {
        p -= sizeof(void(*)(void));
        if (*(void(**)(void))p) {
            (*(void(**)(void))p)();
        }
    }
}
