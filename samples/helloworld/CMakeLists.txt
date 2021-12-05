add_executable(helloworld)

target_sources(helloworld
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/helloworld.cpp
)

target_link_libraries(helloworld
PRIVATE
    dynlib
    slib
)