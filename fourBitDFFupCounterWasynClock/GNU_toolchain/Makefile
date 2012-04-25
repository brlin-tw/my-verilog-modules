#Makefile of fourBitDFFupCounterWasynClock
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/fourBitDFFupCounterWasynClock_tb.executable Source_code/fourBitDFFupCounterWasynClock_tb.v

simulate:
	Simulation/fourBitDFFupCounterWasynClock_tb.executable

wave:
	gtkwave Simulation/fourBitDFFupCounterWasynClock_tb.vcd &
