#include <chrono>
#include <iostream>

#include "coke/coke.h"

// 输出"Hello World"到标准输出n次，每次间隔ms毫秒
coke::Task<> helloworld(size_t n, std::chrono::milliseconds ms)
{
    for (size_t i = 0; i < n; i++) {
        if (i != 0)
            co_await coke::sleep(ms);

        std::cout << "Hello World" << std::endl;
    }
}

int main()
{
    // 启动协程函数，并同步等待完成
    coke::sync_wait(helloworld(3, std::chrono::milliseconds(500)));

    return 0;
}
