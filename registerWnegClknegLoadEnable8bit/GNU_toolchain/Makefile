#Makefile of registerWnegClknegLoadEnable8bit
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/registerWnegClknegLoadEnable8bit_tb.executable Source_code/registerWnegClknegLoadEnable8bit_tb.v

simulate:
	Simulation/registerWnegClknegLoadEnable8bit_tb.executable

wave:
	gtkwave Simulation/registerWnegClknegLoadEnable8bit_tb.vcd &
