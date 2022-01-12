################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.c \
../Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.c 

OBJS += \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.o \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.o 

C_DEPS += \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.d \
./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FreeRTOS-Plus-TCP/source/%.o: ../Drivers/FreeRTOS-Plus-TCP/source/%.c Drivers/FreeRTOS-Plus-TCP/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/Compiler/GCC" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Core/Inc" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/tools/tcp_utilities/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/source/portable/NetworkInterface/include" -I"/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Drivers/FreeRTOS-Plus-TCP/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source

clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source:
	-$(RM) ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_ARP.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DHCP.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_DNS.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_IP.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Sockets.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_Stream_Buffer.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_IP.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_TCP_WIN.o ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.d ./Drivers/FreeRTOS-Plus-TCP/source/FreeRTOS_UDP_IP.o

.PHONY: clean-Drivers-2f-FreeRTOS-2d-Plus-2d-TCP-2f-source

