################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_ARP.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DNS.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_IP.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.c \
../Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_ARP.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DNS.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_IP.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.o \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_ARP.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DNS.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_IP.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.d \
./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS-Plus-TCP/%.o: ../Middlewares/Third_Party/FreeRTOS-Plus-TCP/%.c Middlewares/Third_Party/FreeRTOS-Plus-TCP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/tools/tcp_utilities/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/STM32Hxx -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/NetworkInterface/include -I/home/nvawter/STM32CubeIDE/workspace_2_0/test_04/CM7/Middlewares/Third_Party/FreeRTOS-Plus-TCP/portable/Compiler/GCC -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_ARP.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_ARP.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DHCP.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DNS.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_DNS.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_IP.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_IP.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Sockets.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_Stream_Buffer.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_IP.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_TCP_WIN.o ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.d ./Middlewares/Third_Party/FreeRTOS-Plus-TCP/FreeRTOS_UDP_IP.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2d-Plus-2d-TCP

