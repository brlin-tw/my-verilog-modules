#Makefile of sevenSegmentDisplayDecoder
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/sevenSegmentDisplayDecoder_tb.executable Source_code/sevenSegmentDisplayDecoder_tb.v

simulate:
	Simulation/sevenSegmentDisplayDecoder_tb.executable

wave:
	gtkwave Simulation/sevenSegmentDisplayDecoder_tb.vcd
