# CMake示例项目：源码依赖workflow和coke

## 项目目标

本项目是一个示例项目，展示如何以源码方式依赖[搜狗workflow](https://github.com/sogou/workflow)和[coke](https://github.com/kedixa/coke)库，并通过CMake构建项目。

## 使用步骤

如果您需要使用workflow和coke创建自己的git项目，建议按照以下步骤进行：

### 1. 初始化git项目

```bash
# 首先创建项目目录并进入
mkdir my-project && cd my-project

# 初始化git仓库
git init
```

### 2. 添加子模块依赖

```bash
# 添加workflow子模块（默认使用master版本，您可以根据需要选择合适的tag）
git submodule add https://github.com/sogou/workflow.git
# 如果需要使用特定tag版本，可以切换到对应分支：
# cd workflow && git checkout <tag_name> && cd ..

# 添加coke子模块（默认使用master版本，您可以根据需要选择合适的tag）
git submodule add https://github.com/kedixa/coke.git
# 如果需要使用特定tag版本，可以切换到对应分支：
# cd coke && git checkout <tag_name> && cd ..
```

### 3. 创建项目结构

- 创建`src`目录存放源代码
- 编写`CMakeLists.txt`配置项目
- 创建`Makefile`简化构建流程
- 配置`.gitignore`忽略构建目录

### 4. 编写示例代码

参考coke的示例代码，创建您的应用程序。本项目中的`src/helloworld.cpp`是一个简单的协程示例。

### 5. 构建和运行

```bash
# 构建项目
make build

# 运行程序
make run

# 清理构建目录
make clean
```

## 许可证

Apache License 2.0

## 备注

本项目完全由AI生成，旨在展示如何正确配置和使用workflow、coke库的CMake项目结构。

