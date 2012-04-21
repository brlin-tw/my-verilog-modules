#Makefile of encoder16to4
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/encoder16to4_tb.executable Source_code/encoder16to4_tb.v

simulate:
	Simulation/encoder16to4_tb.executable

wave:
	gtkwave Simulation/encoder16to4_tb.vcd
