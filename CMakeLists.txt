cmake_minimum_required(VERSION 3.16)
project(simpleprj)

set(CMAKE_CXX_STANDARD 14)

find_package(Poco REQUIRED COMPONENTS Foundation)

add_executable(simpleprj main.cpp)
target_link_libraries(simpleprj PUBLIC Poco::Foundation)

