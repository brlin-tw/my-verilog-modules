#Makefile of registerWnegClknegLoadEnable
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/registerWnegClknegLoadEnable_tb.executable Source_code/registerWnegClknegLoadEnable_tb.v

simulate:
	Simulation/registerWnegClknegLoadEnable_tb.executable

wave:
	gtkwave Simulation/registerWnegClknegLoadEnable_tb.vcd &
