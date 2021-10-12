

set(linuxCmake "/home/it3rator/Qt-5.12.5-Static-X64-Linux/static/release/lib/cmake")
if (EXISTS ${linuxCmake})
else()
	message(FATAL_ERROR "No existe la carpeta ${linux}")
endif()


   # include(${CMAKE_CURRENT_SOURCE_DIR}/config/linux/CmakeLists.txt)
   set(CMAKE_PREFIX_PATH ${linux})
   find_package(Qt5 COMPONENTS Widgets REQUIRED)
   add_executable(${PROJECT_NAME} ${SOURCES})
   
   target_link_libraries(${PROJECT_NAME} Qt5::Widgets)