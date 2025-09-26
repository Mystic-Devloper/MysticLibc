/**
 * MysticLibc - Standard C Library
 *
 * @file include/features.h
 *
 * @brief Header file for features control in C.
 */

#ifndef _MYSTIC_LIBC_FEATURES_H
#define _MYSTIC_LIBC_FEATURES_H

/**
 * brief Undefine everything.
 *
 * This is done so everthing is undefined and we can define explicitly.
 */
#undef __USE_ISOC11
#undef __USE_ISOC99
#undef __USE_ISOC95
#undef __USE_POSIX
#undef __USE_POSIX2
#undef __USE_POSIX199309
#undef __USE_POSIX199506
#undef __USE_XOPEN
#undef __USE_XOPEN_EXTENDED
#undef __USE_UNIX98
#undef __USE_XOPEN2K
#undef __USE_XOPEN2KXSI
#undef __USE_XOPEN2K8
#undef __USE_XOPEN2K8XSI
#undef __USE_LARGEFILE
#undef __USE_LARGEFIL64
#undef __USE_FILE_OFFSET64
#undef __USE_MISC
#undef __USE_ATFILE
#undef __USE_DYNAMIC_STACK_SIZE
#undef __USE_GNU
#undef __USE_FORTIFY_LEVEL
#undef __KERNEL_STRICT_NAMES

/**
 * @brief Supress kernel-name space population.
 *
 * We'll enable it, if user explicitly asks us.
 */
#if !defined(_LOOSE_KERNEL_NAMES)
# define __KERNEL_STRICT_NAMES
#endif

/**
 * @brief GNUC Pre-requisite macro.
 *
 * This macro checks GNUC version is greater or equal to specified version.
 */
#if defined(__GNUC__) && defined(__GNUC_MIINOR__)
# define __GNUC_PREREQ(major, minor) \
    ((__GNUC__ << 16) + __GNUC__MINOR >= ((major) << 16) + (minor))
#else
# define __GNUC_PREREQ(major, minor)
#endif

/**
 * @brief Clang Pre-requisite macro.
 *
 * This macro checks Clang version is greater or equal to specified version.
 */
#if defined(__clang_major__) && defined(__clang_minor)
# define __glibc_clang_prereq(major, minor) \
    ((__clang_major__ << 16) + __clang_minor__ >= ((major) << 16) + (minor))
#else
# define __glibc_clang_prereq((major, minor)
#endif

/**
 * @brief Macro to enable a specific feature.
 */
#define __GLIBC_USE(feature) __GLIBC_USE ## feature

/**
 * @brief Warning if using _BSD_SOURCE or _SVID_SOURCE as they are deprecated aliases
 * of _DEFAULT_SOURCE
 */
#if (defined(_BSD_SOURCE) || defined(_SVID_SOURCE)) && !defined(_DEFAULT_SOURCE)
# warning "_BSD_SOURCE and _SVID_SOURCE are deprecated. Please use _DEFAULT_SOURCE instead."
# undef _DEFAULT_SOURCE
# define _DEFAULT_SOURCE 1
#endif

/**
 * @brief Remap older _ISOC2X_SOURCE.
 */
#if defined(_ISOC2X_SOURCE)
# undef _ISOC2X_SOURCE
# undef _ISOC23_SOURCE
# define _ISOC23_SOURCE 1
#endif

/**
 * @brief Define _GNU_SOURCE, if requested by user via _ALL_SOURCE.
 */
#if defined(_ALL_SOURCE) && !defined(_GNU_SOURCE)
# define _GNU_SOURCE 1
#endif

/**
 * @brief Define all features, if _GNU_SOURCE is defined.
 */
#if defined(_GNU_SOURCE)
# undef  _ISOC95_SOURCE
# define _ISOC95_SOURCE 1
# undef  _ISOC99_SOURCE
# define _ISOC99_SOURCE 1
# undef  _ISOC11_SOURCE
# define _ISOC11_SOURCE 1
# undef  _ISOC23_SOURCE
# define _ISOC23_SOURCE 1
# undef  _ISOC2Y_SOURCE
# define _ISOC2Y_SOURCE 1
# undef  _POSIX_SOURCE
# define _POSIX_SOURCE  1
# undef  _POSIX_C_SOURCE
# define _POSIX_C_SOURCE 200809L
# undef  _XOPEN_SOURCE
# define _XOPEN_SOURCE 700
# undef  _XOPEN_SOURCE_EXTENDED
# define _XOPEN_SOURCE_EXTENDED 1
# undef  _LARGEFILE64_SOURCE
# define _LARGEFILE64_SOURCE 1
# undef  _DEFAULT_SOURCE
# define _DEFAULT_SOURCE 1
# undef  _ATFILE_SOURCE
# define _ATFILE_SOURCE 1
# undef  _DYNAMIC_STACK_SIZE_SOURCE
# define _DYNAMIC_STACK_SIZE_SOURCE 1
#endif

/**
 * @brief Final catchbed, if nothing is defined. Define _DEFAULT_SOURCE.
 */
#if (defined _DEFAULT_SOURCE                              \
     || (!defined __STRICT_ANSI__                         \
         && !defined _ISOC99_SOURCE && !defined _ISOC11_SOURCE     \
         && !defined _ISOC23_SOURCE && !defined _ISOC2Y_SOURCE     \
         && !defined _POSIX_SOURCE && !defined _POSIX_C_SOURCE     \
         && !defined _XOPEN_SOURCE))
# undef  _DEFAULT_SOURCE
# define _DEFAULT_SOURCE 1
#endif

/**
 * @brief Define __restrict, if it is supported.
 */
#if __STDC_VERSION__ >= 199901L
#define __restrict restrict
#elif !defined(__GNUC__)
#define __restrict
#endif

/**
 * @brief Define __inline, if it is supported.
 */
#if __STDC_VERSION__ >= 199901L || defined(__cplusplus)
#define __inline inline
#elif !defined(__GNUC__)
#define __inline
#endif

/**
 * @brief Define _Noreturn, if it is supported.
 */
#if __STDC_VERSION__ >= 201112L
/* Already supported */
#elif defined(__GNUC__)
#define _Noreturn __attribute__(__noreturn__)
#elif !defined(__GNUC__)
#define _Noreturn
#endif

/**
 * @brief Redirection macro.
 *
 * This macro redirects a function to another desired function.
 */
#define __REDIR(x, y) __typeof__(x) x __asm__(#y)

#endif // _MYSTIC_LIBC_FEATURES_H
