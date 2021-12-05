SET(ASM_DIALECT "-NASM")
SET(CMAKE_ASM${ASM_DIALECT}_SOURCE_FILE_EXTENSIONS nasm;nas;asm)

# -f elf needed for linux. nasm -hf lists many formats, and default is 'bin'
# which doesnt work. See also the post by P. Punnoor to the CMake mailing-
# -list at http://www.cmake.org/pipermail/cmake/2005-November/007478.html
IF(UNIX)
    SET(CMAKE_ASM-NASM_COMPILER_ARG1 "-f elf")
ELSE(UNIX)
    SET(CMAKE_ASM-NASM_COMPILER_ARG1 "-f win32")
ENDIF(UNIX)

# This section exists to override the one in CMakeASMInformation.cmake
# (the default Information file). This removes the <FLAGS>
# thing so that your C compiler flags that have been set via
# set_target_properties don't get passed to nasm and confuse it.
IF(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)
  SET(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> -o <OBJECT> <SOURCE>")
ENDIF(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)

INCLUDE(CMakeASMInformation)
SET(ASM_DIALECT)
