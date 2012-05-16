#Makefile of fullAdder1bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/fullAdder4bit_tb.executable Source_code/fullAdder4bit_tb.v

simulate:
	Simulation/fullAdder4bit_tb.executable

wave:
	gtkwave Simulation/fullAdder4bit_tb.vcd &

