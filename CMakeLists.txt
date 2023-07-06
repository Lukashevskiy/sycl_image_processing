cmake_minimum_required(VERSION 3.22)
project(sycl_image_processing)

set(SRC_FILES
    "src/main.cpp")

set(SYCL_FILES
    "src/main.cpp")

set(ComputeCpp_DIR CACHE STRING "NOT-FOUND")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/")

if (NOT ComputeCpp_DIR)
 message(FATAL_ERROR "SYCL implementation root not provided, please specify"
    "the path to the root of the chosen SYCL implementation using"
    "ComputeCpp_DIR=<path/to/install/root>.")
endif()

find_package(ComputeCpp REQUIRED)

# find_package(HDF5 REQUIRED)

add_executable(sycl_image_processing ${SRC_FILES} ${HEADER_FILES})
target_include_directories(sycl_image_processing PRIVATE 
                          "${ComputeCpp_INCLUDE_DIRS}"
                          "${CMAKE_SOURCE_DIR}/src")


add_sycl_to_target(TARGET sycl_image_processing SOURCES "src/main.cpp")