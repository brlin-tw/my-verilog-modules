#Makefile of adder_full_4bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/adder_full_4bit_tb.executable Source_code/adder_full_4bit_tb.v

simulate:
	Simulation/adder_full_4bit_tb.executable

wave:
	gtkwave Simulation/adder_full_4bit_tb.vcd &

