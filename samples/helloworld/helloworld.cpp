#include <cstdio>
#include <cstdint>

#include <slib.h>
#include <dynlib.h>

#include <string>

struct sss {
    int a;
    int b;
    std::string name;
};

int main() {
    sss s;
    s.name = "string";
    size_t n = 0;
    for(size_t i = 0;i<9; ++i) {
        n+=i;
    }
    dynlib::dynlib_impl();
    slib::slib_impl();
    return 0;
}