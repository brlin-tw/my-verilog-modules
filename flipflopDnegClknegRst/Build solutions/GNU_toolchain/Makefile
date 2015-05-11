#Makefile of flipflopDnegClknegRst
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/flipflopDnegClknegRst_tb.executable "../../Source code/flipflopDnegClknegRst_tb.v"

simulate:
	Simulation/flipflopDnegClknegRst_tb.executable

wave:
	gtkwave Simulation/flipflopDnegClknegRst_tb.vcd &
