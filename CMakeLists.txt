cmake_minimum_required(VERSION 3.20)
project(sycl_image_processing)

project(sycl_image_processing LANGUAGES C CXX)

find_package(HDF5 REQUIRED COMPONENTS C CXX)
add_executable(sycl_image_processing "${PROJECT_SOURCE_DIR}/app/main.cpp")
target_link_libraries(sycl_image_processing PRIVATE HDF5::HDF5)
target_include_directories(sycl_image_processing PUBLIC "${PROJECT_SOURCE_DIR}")