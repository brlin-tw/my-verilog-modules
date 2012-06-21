#Makefile of SAP_1_ROM_mapping
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/SAP_1_ROM_mapping_tb.executable Source_code/SAP_1_ROM_mapping_tb.v

simulate:
	Simulation/SAP_1_ROM_mapping_tb.executable

wave:
	gtkwave Simulation/SAP_1_ROM_mapping_tb.vcd &
