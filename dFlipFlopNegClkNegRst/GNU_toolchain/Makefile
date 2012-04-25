#Makefile of dFlipFlopNegEdge
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/dFlipFlopNegClkNegRst_tb.executable Source_code/dFlipFlopNegClkNegRst_tb.v

simulate:
	Simulation/dFlipFlopNegClkNegRst_tb.executable

wave:
	gtkwave Simulation/dFlipFlopNegClkNegRst_tb.vcd &
