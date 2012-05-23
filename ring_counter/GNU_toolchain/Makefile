#Makefile of a ring_counter
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/ring_counter_tb.executable Source_code/ring_counter_tb.v

simulate:
	Simulation/ring_counter_tb.executable

wave:
	gtkwave Simulation/ring_counter_tb.vcd &
