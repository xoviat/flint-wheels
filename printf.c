#include <stdio.h>
#include <stdarg.h>

extern int _gmpfr_fprintf(const char *fmt, va_list argp) {
    return fprintf(stderr, fmt, argp);
}
