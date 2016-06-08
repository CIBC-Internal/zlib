if(NOT Zlib_FOUND)
  MESSAGE(FATAL_ERROR "Including UseZlib.cmake but the Zlib package was not found.")
endif()

include_directories(${SCI_ZLIB_INCLUDE})
link_directories(${SCI_ZLIB_LIBRARY_DIR})
if (DO_ZLIB_MANGLE)
  add_definitions(-DZ_PREFIX)
endif()
