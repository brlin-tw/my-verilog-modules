#Makefile of flipflopDposClknegRstWithNegLoadEnable
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/flipflopDposClknegRstWithNegLoadEnable_tb.executable Source_code/flipflopDposClknegRstWithNegLoadEnable_tb.v

simulate:
	Simulation/flipflopDposClknegRstWithNegLoadEnable_tb.executable

wave:
	gtkwave Simulation/flipflopDposClknegRstWithNegLoadEnable_tb.vcd &
