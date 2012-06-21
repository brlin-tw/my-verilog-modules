#Makefile of SAP_1_instruction_register
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/SAP_1_instruction_register_tb.executable Source_code/SAP_1_instruction_register_tb.v

simulate:
	Simulation/SAP_1_instruction_register_tb.executable

wave:
	gtkwave Simulation/SAP_1_instruction_register_tb.vcd &
