# ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·
# By SuperUserx86.com 2021
# ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·
# https://cmake.org/cmake/help/v3.21/


cmake_minimum_required(VERSION 3.2.0) 
cmake_minimum_required()

project(helloworld VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

file(GLOB SOURCES 
    "src/*.ui"
    "src/*.cpp"
    "src/*.h"
    "src/*.qrc"
    #"src/resource.h"
)

IF(WIN32)
    include(${CMAKE_CURRENT_SOURCE_DIR}/config/windows/Windows.cmake)
ELSEIF(UNIX)
    include(${CMAKE_CURRENT_SOURCE_DIR}/config/linux/Linux.cmake)
ENDIF()

