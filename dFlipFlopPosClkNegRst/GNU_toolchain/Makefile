#Makefile of dFlipFlopPosClkNegRst
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/dFlipFlopPosClkNegRst_tb.executable Source_code/dFlipFlopPosClkNegRst_tb.v

simulate:
	Simulation/dFlipFlopPosClkNegRst_tb.executable

wave:
	gtkwave Simulation/dFlipFlopPosClkNegRst_tb.vcd &
