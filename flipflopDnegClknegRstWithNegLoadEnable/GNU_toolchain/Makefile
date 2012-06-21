#Makefile of flipflopDnegClknegRstWithNegLoadEnable
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/flipflopDnegClknegRstWithNegLoadEnable_tb.executable Source_code/flipflopDnegClknegRstWithNegLoadEnable_tb.v

simulate:
	Simulation/flipflopDnegClknegRstWithNegLoadEnable_tb.executable

wave:
	gtkwave Simulation/flipflopDnegClknegRstWithNegLoadEnable_tb.vcd &
