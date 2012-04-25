#Makefile of fourBitDFFdownCounterWasynClock
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/fourBitDFFdownCounterWasynClock_tb.executable Source_code/fourBitDFFdownCounterWasynClock_tb.v

simulate:
	Simulation/fourBitDFFdownCounterWasynClock_tb.executable

wave:
	gtkwave Simulation/fourBitDFFdownCounterWasynClock_tb.vcd &
