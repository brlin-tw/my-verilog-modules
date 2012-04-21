#Makefile of decoder2to4withEnable
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/decoder2to4withEnable_tb.executable Source_code/decoder2to4withEnable_tb.v

simulate:
	Simulation/decoder2to4withEnable_tb.executable

wave:
	gtkwave Simulation/decoder2to4withEnable_tb.vcd
