##################################
# 配置ARM交叉编译
#################################
set(CMAKE_SYSTEM_NAME Linux)    #设置目标系统名字
set(CMAKE_SYSTEM_PROCESSOR arm) #设置目标处理器架构

# 指定编译器的sysroot路径
set(TOOLCHAIN_DIR /opt/st/stm32mp1/3.1-snapshot/sysroots)
set(CMAKE_SYSROOT ${TOOLCHAIN_DIR}/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi)

# 指定交叉编译器arm-linux-gcc
set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/arm-ostl-linux-gnueabi-gcc)

# 为编译器添加编译选项
set(CMAKE_C_FLAGS "-mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
#################################
# end
##################################
