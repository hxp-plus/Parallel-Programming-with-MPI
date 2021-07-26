cmake_minimum_required(VERSION 3.16)
project(floyd C)

set(CMAKE_C_STANDARD 90)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
#SET(CMAKE_CXX_COMPILER mpicxx)
SET(CMAKE_C_COMPILER mpicc)

find_package(MPI REQUIRED)
include_directories(${MPI_INCLUDE_PATH})

add_executable(floyd main.c mympi.c mympi.h)

add_executable(write_row write_row.c)