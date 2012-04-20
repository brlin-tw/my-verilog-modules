#Makefile of multiplexer8to1
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/multiplexer8to1_tb.executable Source_code/multiplexer8to1_tb.v

simulate:
	Simulation/multiplexer8to1_tb.executable

wave:
	gtkwave Simulation/multiplexer8to1_tb.vcd
