################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.c \
../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/stm32hxx_hal_eth.c 

OBJS += \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.o \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/stm32hxx_hal_eth.o 

C_DEPS += \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.d \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/stm32hxx_hal_eth.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.o: ../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.c Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/FreeRTOS-Plus-TCP/include -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Core/Inc" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/Compiler/GCC" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/%.o: ../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/%.c Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/Compiler/GCC" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Core/Inc" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32Hxx

clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32Hxx:
	-$(RM) ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.d ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/NetworkInterface.o ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/stm32hxx_hal_eth.d ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/STM32Hxx/stm32hxx_hal_eth.o

.PHONY: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-STM32Hxx

