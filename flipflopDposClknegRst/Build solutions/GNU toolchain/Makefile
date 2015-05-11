#Makefile of flipflopDposClknegRst
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/flipflopDposClknegRst_tb.executable "../../Source code/flipflopDposClknegRst_tb.v"

simulate:
	Simulation/flipflopDposClknegRst_tb.executable

wave:
	gtkwave Simulation/flipflopDposClknegRst_tb.vcd &
