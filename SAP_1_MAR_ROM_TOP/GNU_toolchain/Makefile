#Makefile of SAP_1_MAR_ROM_TOP
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/SAP_1_MAR_ROM_TOP_tb.executable Source_code/SAP_1_MAR_ROM_TOP_tb.v

simulate:
	Simulation/SAP_1_MAR_ROM_TOP_tb.executable

wave:
	gtkwave Simulation/SAP_1_MAR_ROM_TOP_tb.vcd &
