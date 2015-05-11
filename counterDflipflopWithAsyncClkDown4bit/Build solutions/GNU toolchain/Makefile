#Makefile of fourBitDFFdownCounterWasynClock
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/counterDflipflopWithAsyncClkDown4bit_tb.executable "../../Source code/counterDflipflopWithAsyncClkDown4bit_tb.v"

simulate:
	Simulation/counterDflipflopWithAsyncClkDown4bit_tb.executable

wave:
	gtkwave Simulation/counterDflipflopWithAsyncClkDown4bit_tb.vcd &
