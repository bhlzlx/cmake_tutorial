#include <cstdio>

namespace dynlib {
    __declspec(dllexport) void dynlib_impl() {
        printf("hello,dynlib!");
    }
}