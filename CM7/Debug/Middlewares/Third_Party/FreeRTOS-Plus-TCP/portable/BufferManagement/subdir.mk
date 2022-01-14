################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/BufferAllocation_2.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/BufferAllocation_2.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/BufferAllocation_2.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/%.o: ../Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/%.c Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/tools/tcp_utilities/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/STM32Hxx -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/Compiler/GCC -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP-2f-portable-2f-BufferManagement

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP-2f-portable-2f-BufferManagement:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/BufferAllocation_2.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/BufferManagement/BufferAllocation_2.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP-2f-portable-2f-BufferManagement

