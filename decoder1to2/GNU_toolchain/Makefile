#Makefile of a Verilog project
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	iverilog -o Simulation/decoder1to2_tb.executable Source_code/decoder1to2_tb.v

simulate:
	Simulation/decoder1to2_tb.executable

wave:
	gtkwave Simulation/decoder1to2_tb.vcd
