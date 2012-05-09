#Makefile of fullAdder1bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/fullAdder1bit_tb.executable Source_code/fullAdder1bit_tb.v

simulate:
	Simulation/fullAdder1bit_tb.executable

wave:
	gtkwave Simulation/fullAdder1bit_tb.vcd &

