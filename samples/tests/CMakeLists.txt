add_executable( local ${CMAKE_CURRENT_SOURCE_DIR}/local.cpp )
target_link_libraries( local wrapd ${LINKED_LIBS} )