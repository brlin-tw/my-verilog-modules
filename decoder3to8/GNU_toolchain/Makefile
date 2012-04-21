#Makefile of decoder3to8 testbench
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	iverilog -o Simulation/decoder3to8_tb.executable Source_code/decoder3to8_tb.v

simulate:
	Simulation/decoder3to8_tb.executable

wave:
	gtkwave Simulation/decoder3to8_tb.vcd
