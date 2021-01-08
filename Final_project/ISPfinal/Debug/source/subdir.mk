################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/leo870823/Desktop/MSOC/Final_project/proximal_operator/fft_top.cpp \
C:/Users/leo870823/Desktop/MSOC/Final_project/proximal_operator/proximal.cpp 

OBJS += \
./source/fft_top.o \
./source/proximal.o 

CPP_DEPS += \
./source/fft_top.d \
./source/proximal.d 


# Each subdirectory must supply rules for building sources it contributes
source/fft_top.o: C:/Users/leo870823/Desktop/MSOC/Final_project/proximal_operator/fft_top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/leo870823/Desktop/MSOC/Final_project -IC:/Xilinx/Vivado/2019.2/include -IC:/Xilinx/Vivado/2019.2/include/etc -IC:/Xilinx/Vivado/2019.2/win64/tools/systemc/include -IC:/Xilinx/Vivado/2019.2/include/ap_sysc -IC:/Xilinx/Vivado/2019.2/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/proximal.o: C:/Users/leo870823/Desktop/MSOC/Final_project/proximal_operator/proximal.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Users/leo870823/Desktop/MSOC/Final_project -IC:/Xilinx/Vivado/2019.2/include -IC:/Xilinx/Vivado/2019.2/include/etc -IC:/Xilinx/Vivado/2019.2/win64/tools/systemc/include -IC:/Xilinx/Vivado/2019.2/include/ap_sysc -IC:/Xilinx/Vivado/2019.2/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


