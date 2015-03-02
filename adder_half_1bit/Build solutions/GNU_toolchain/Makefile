#Makefile of adder_half_1bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
MODULE_NAME = adder_half_1bit
PROJECT_ROOT_DIRECTORY = ../..
build:
	mkdir --parents Simulation
	iverilog \
		-o Simulation/${MODULE_NAME}_testbench.executable \
		${PROJECT_ROOT_DIRECTORY}/Source_code/${MODULE_NAME}_testbench.v

simulate:
	Simulation/${MODULE_NAME}_testbench.executable

viewWaveform:
	gtkwave Simulation/${MODULE_NAME}_testbench.vcd &
