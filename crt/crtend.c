/**
 * MysticLibc - Standard C Library.
 *
 * @file crtend.c
 *
 * @brief C Runtime Routine Termination.
 */

/*
 * @brief Empty arrays that mark the end of init/fini arrays.
 */
void (*__init_array_end[])(void)
    __attribute__((section(".init_array"), used)) = { };

void (*__fini_array_end[])(void)
    __attribute__((section(".fini_array"), used)) = { };

