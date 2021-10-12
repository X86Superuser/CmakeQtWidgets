

#set(CMAKE_PREFIX_PATH ${winCmake})
set(CMAKE_PREFIX_PATH "D:/Programacion/Windows/C++/Bibliotecas_Estaticas/QT/Qt-Static/Qt-5.15.2-Multi-vc2019/lib/cmake")
set(CMAKE_CXX_FLAGS_RELEASE "/MT")
set(CMAKE_CXX_FLAGS_DEBUG "/MTd")

find_package(Qt5 COMPONENTS Widgets REQUIRED)

add_executable(${PROJECT_NAME} WIN32 ${SOURCES})
target_link_libraries(${PROJECT_NAME} Qt5::Widgets)