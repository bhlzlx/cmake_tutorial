add_library(dynlib SHARED)

target_sources(dynlib
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/dynlib.cpp
)

target_include_directories(dynlib
INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}
)