cmake_minimum_required(VERSION 3.16)

project(PathAngleArc_Example VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appPathAngleArc_Example
    main.cpp
)

qt_add_qml_module(appPathAngleArc_Example
    URI PathAngleArc_Example
    VERSION 1.0
    QML_FILES main.qml 
)

target_compile_definitions(appPathAngleArc_Example
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appPathAngleArc_Example
    PRIVATE Qt6::Quick)
