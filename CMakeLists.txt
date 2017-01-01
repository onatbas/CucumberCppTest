cmake_minimum_required(VERSION 3.1)
project(cucumberTest)
include(CTest)
enable_testing()

# sets
set (CMAKE_CXX_STANDARD 14)

set(CUCUMBERTEST_HDR_FILES ${CMAKE_CURRENT_SOURCE_DIR}/include/cucumberTest/CucumberApp.hxx)
set(CUCUMBERTEST_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/CucumberApp.cxx)


# includes/include directories
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/configure_boost.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/configure_gtest.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/configure_gmock.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/configure_cucumber.cmake)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include/cucumberTest)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# binaries/executables/libraries
add_library(cucumberTest STATIC ${CUCUMBERTEST_HDR_FILES} ${CUCUMBERTEST_SRC_FILES})

# linker
target_link_libraries(cucumberTest ${Boost_LIBRARIES})

#tests
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/tests)