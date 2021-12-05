cmake_minimum_required(VERSION 3.22.0)

project(cmake_tutorial)

# masm att fasm nasm

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmakeconf")
# enable_language(ASM_FASM)
enable_language(ASM_NASM)

include(compiler_conf)
include(building_output)

add_subdirectory(samples)