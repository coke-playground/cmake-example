cmake_minimum_required(VERSION 3.16)

# 设置项目名称和版本
project(
    cmake-example
    VERSION 1.0.0
    LANGUAGES CXX
    DESCRIPTION "CMake示例项目：展示如何源码依赖workflow和coke"
)

# 设置C++20标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 设置默认构建类型为Release（cache变量，用户可覆盖）
set(CMAKE_BUILD_TYPE Release CACHE STRING "构建类型：Debug/Release/RelWithDebInfo/MinSizeRel")


# 添加子模块：workflow和coke
add_subdirectory(workflow)
add_subdirectory(coke)

# 创建helloworld可执行程序
add_executable(helloworld src/helloworld.cpp)

# 链接coke库
target_link_libraries(helloworld PRIVATE coke::coke)
