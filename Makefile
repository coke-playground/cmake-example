BUILD_DIR := build.cmake

build:
	@mkdir -p $(BUILD_DIR)
	@cmake -S . -B $(BUILD_DIR)
	@cmake --build $(BUILD_DIR) -j 8

clean:
	@rm -rf $(BUILD_DIR)

rebuild: clean build

run: build
	@$(BUILD_DIR)/helloworld

help:
	@echo "可用命令："
	@echo "  make build     - 构建项目（默认）"
	@echo "  make clean     - 清理构建目录"
	@echo "  make rebuild   - 重新构建项目"
	@echo "  make run       - 构建并运行程序"
	@echo "  make help      - 显示此帮助信息"
