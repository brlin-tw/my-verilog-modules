#Makefile of bufferTristate
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/bufferTristate_tb.executable Source_code/bufferTristate_tb.v

simulate:
	Simulation/bufferTristate_tb.executable

wave:
	gtkwave Simulation/bufferTristate_tb.vcd &
