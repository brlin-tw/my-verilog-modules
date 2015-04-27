#Makefile of multiplier2x2
  #author:Vdragon(Vdragon.Taiwan@gmail.com)
  #this file is licensed under LGPL 3 or later
MODULE_NAME = multiplier2x2
MODULE_ROOT_DIRECTORY = ../..

build:
	mkdir --parents Simulation
	iverilog \
		-o Simulation/${MODULE_NAME}_testbench.executable \
		${MODULE_ROOT_DIRECTORY}/Source_code/${MODULE_NAME}_testbench.v

simulate:
	Simulation/${MODULE_NAME}_testbench.executable

viewWaveform:
	gtkwave Simulation/${MODULE_NAME}_testbench.vcd &
