cmake_minimum_required(VERSION 3.16)
project(the_sieve_of_eratosthenes C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD 99)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
#SET(CMAKE_CXX_COMPILER mpicxx)
SET(CMAKE_C_COMPILER  mpicc)

find_package(MPI REQUIRED)
include_directories(${MPI_INCLUDE_PATH})

add_executable(the_sieve_of_eratosthenes main.c)

target_link_libraries(the_sieve_of_eratosthenes m)