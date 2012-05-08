#Makefile of threeBitDFFupCounterWasynClock
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/threeBitDFFupCounterWasynClock_tb.executable Source_code/threeBitDFFupCounterWasynClock_tb.v

simulate:
	Simulation/threeBitDFFupCounterWasynClock_tb.executable

wave:
	gtkwave Simulation/threeBitDFFupCounterWasynClock_tb.vcd &
