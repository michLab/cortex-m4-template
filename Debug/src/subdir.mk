################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/FreeRTOS.c \
../src/gpio.c \
../src/interrupts.c \
../src/main.c 

OBJS += \
./src/FreeRTOS.o \
./src/gpio.o \
./src/interrupts.o \
./src/main.o 

C_DEPS += \
./src/FreeRTOS.d \
./src/gpio.d \
./src/interrupts.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -DSTM32F40XX -DSTM32F40_41xxx -I"/home/michal/workspace/cm4_freertos_gpio_exti/inc" -I"/home/michal/workspace/cm4_freertos_gpio_exti/CMSIS" -I"/home/michal/workspace/cm4_freertos_gpio_exti/FreeRTOS/Source/include" -I"/home/michal/workspace/cm4_freertos_gpio_exti/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


