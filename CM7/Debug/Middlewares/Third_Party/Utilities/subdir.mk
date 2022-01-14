################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/Utilities/UDPLoggingPrintf.c \
../Middlewares/Third_Party/Utilities/eventLogging.c \
../Middlewares/Third_Party/Utilities/hr_gettime.c \
../Middlewares/Third_Party/Utilities/iperf_task_v3_0d.c \
../Middlewares/Third_Party/Utilities/memcpy.c \
../Middlewares/Third_Party/Utilities/printf-stdarg.c 

OBJS += \
./Middlewares/Third_Party/Utilities/UDPLoggingPrintf.o \
./Middlewares/Third_Party/Utilities/eventLogging.o \
./Middlewares/Third_Party/Utilities/hr_gettime.o \
./Middlewares/Third_Party/Utilities/iperf_task_v3_0d.o \
./Middlewares/Third_Party/Utilities/memcpy.o \
./Middlewares/Third_Party/Utilities/printf-stdarg.o 

C_DEPS += \
./Middlewares/Third_Party/Utilities/UDPLoggingPrintf.d \
./Middlewares/Third_Party/Utilities/eventLogging.d \
./Middlewares/Third_Party/Utilities/hr_gettime.d \
./Middlewares/Third_Party/Utilities/iperf_task_v3_0d.d \
./Middlewares/Third_Party/Utilities/memcpy.d \
./Middlewares/Third_Party/Utilities/printf-stdarg.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/Utilities/%.o: ../Middlewares/Third_Party/Utilities/%.c Middlewares/Third_Party/Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/tools/tcp_utilities/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/Utilities -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/test/cbmc/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/Utilities/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/STM32Hxx -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/Compiler/GCC -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-Utilities

clean-Middlewares-2f-Third_Party-2f-Utilities:
	-$(RM) ./Middlewares/Third_Party/Utilities/UDPLoggingPrintf.d ./Middlewares/Third_Party/Utilities/UDPLoggingPrintf.o ./Middlewares/Third_Party/Utilities/eventLogging.d ./Middlewares/Third_Party/Utilities/eventLogging.o ./Middlewares/Third_Party/Utilities/hr_gettime.d ./Middlewares/Third_Party/Utilities/hr_gettime.o ./Middlewares/Third_Party/Utilities/iperf_task_v3_0d.d ./Middlewares/Third_Party/Utilities/iperf_task_v3_0d.o ./Middlewares/Third_Party/Utilities/memcpy.d ./Middlewares/Third_Party/Utilities/memcpy.o ./Middlewares/Third_Party/Utilities/printf-stdarg.d ./Middlewares/Third_Party/Utilities/printf-stdarg.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-Utilities

