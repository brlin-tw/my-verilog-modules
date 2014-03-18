#Makefile of decoderDisplay7Segment
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	cd ../Source_code; iverilog -o ../GNU_toolchain/Simulation/decoderDisplay7Segment_tb.executable decoderDisplay7Segment_tb.v

simulate:
	Simulation/decoderDisplay7Segment_tb.executable

wave:
	gtkwave Simulation/decoderDisplay7Segment_tb.vcd
