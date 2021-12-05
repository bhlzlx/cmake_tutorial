set(ASM_DIALECT "_FASM")
set(CMAKE_ASM${ASM_DIALECT}_COMPILER_LIST fasm)
include(CMakeDetermineASMCompiler)
set(ASM_DIALECT)