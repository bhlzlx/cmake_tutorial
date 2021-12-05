add_executable(hello_asm)
target_sources(hello_asm
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/hello_asm.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/hello_asm.asm
)