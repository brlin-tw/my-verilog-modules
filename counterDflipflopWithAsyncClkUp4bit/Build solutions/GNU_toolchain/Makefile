#Makefile of counterDflipflopWithAsyncClkUp4bit_tb
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/counterDflipflopWithAsyncClkUp4bit_tb.executable "../../Source code/counterDflipflopWithAsyncClkUp4bit_tb.v"

simulate:
	Simulation/counterDflipflopWithAsyncClkUp4bit_tb.executable

wave:
	gtkwave Simulation/counterDflipflopWithAsyncClkUp4bit_tb.vcd &
