#Makefile of decoderDisplay7Segment
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/decoderDisplay7Segment_tb.executable Source_code/decoderDisplay7Segment_tb.v

simulate:
	Simulation/decoderDisplay7Segment_tb.executable

wave:
	gtkwave Simulation/decoderDisplay7Segment_tb.vcd
