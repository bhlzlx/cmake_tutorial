#include <cstdio>

extern "C" {
    char const* __cdecl cdecl_sample( size_t type );
    char const* __stdcall stdcall_sample( size_t type );
    char const* __fastcall fastcall_sample( size_t type );
}

int main() {
    char const* message1 = cdecl_sample(0);
    char const* message2 = stdcall_sample(1);
    char const* message3 = fastcall_sample(1);
    printf("%s\n", message1);
    printf("%s\n", message2);
    printf("%s\n", message3);
    return 0;
}