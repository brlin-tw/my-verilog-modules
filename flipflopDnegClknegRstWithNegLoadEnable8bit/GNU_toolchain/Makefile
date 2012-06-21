#Makefile of flipflopDnegClknegRstWithNegLoadEnable8bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/flipflopDnegClknegRstWithNegLoadEnable8bit_tb.executable Source_code/flipflopDnegClknegRstWithNegLoadEnable8bit_tb.v

simulate:
	Simulation/flipflopDnegClknegRstWithNegLoadEnable8bit_tb.executable

wave:
	gtkwave Simulation/flipflopDnegClknegRstWithNegLoadEnable8bit_tb.vcd &
