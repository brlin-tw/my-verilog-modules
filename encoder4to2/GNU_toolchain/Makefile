#Makefile of encoder4to2
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	cd ../Source_code;\
	iverilog -o ../GNU_toolchain/Simulation/encoder4to2_tb.executable encoder4to2_tb.v

simulate:
	Simulation/encoder4to2_tb.executable

wave:
	gtkwave Simulation/encoder4to2_tb.vcd
