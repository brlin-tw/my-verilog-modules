#Makefile of counterSyncPosRstWithPosEnableUp4bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/counterSyncPosRstWithPosEnUp4bit_tb.executable Source_code/counterSyncPosRstWithPosEnUp4bit_tb.v

simulate:
	Simulation/counterSyncPosRstWithPosEnUp4bit_tb.executable

wave:
	gtkwave Simulation/counterSyncPosRstWithPosEnUp4bit_tb.vcd &
