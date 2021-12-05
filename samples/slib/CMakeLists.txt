add_library(slib STATIC)

target_sources(slib
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/slib.cpp
)

target_include_directories(slib
INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}
)