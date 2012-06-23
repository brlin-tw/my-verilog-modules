#Makefile of bufferTristate8bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/bufferTristate8bit_tb.executable Source_code/bufferTristate8bit_tb.v


simulate:
	Simulation/bufferTristate8bit_tb.executable

wave:
	gtkwave Simulation/bufferTristate8bit_tb.vcd &
