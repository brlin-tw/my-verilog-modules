#Makefile of multiplexer4to1
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/multiplexer4to1_tb.executable Source_code/multiplexer4to1_tb.v

simulate:
	Simulation/multiplexer4to1_tb.executable

wave:
	gtkwave Simulation/multiplexer4to1_tb.vcd
