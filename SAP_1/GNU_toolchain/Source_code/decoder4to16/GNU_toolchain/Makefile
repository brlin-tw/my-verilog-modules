#Makefile of decoder4to16
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/decoder4to16_tb.executable Source_code/decoder4to16_tb.v

simulate:
	Simulation/decoder4to16_tb.executable

wave:
	gtkwave Simulation/decoder4to16_tb.vcd &
