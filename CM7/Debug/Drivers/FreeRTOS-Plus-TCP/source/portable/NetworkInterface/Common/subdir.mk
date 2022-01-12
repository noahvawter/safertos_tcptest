################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/phyHandling.c 

OBJS += \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/phyHandling.o 

C_DEPS += \
./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/phyHandling.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/%.o: ../Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/%.c Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/Compiler/GCC" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Core/Inc" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-Common

clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-Common:
	-$(RM) ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/phyHandling.d ./Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/Common/phyHandling.o

.PHONY: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source-2f-portable-2f-NetworkInterface-2f-Common

