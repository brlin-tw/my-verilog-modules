build:
	cd ../Source_code && iverilog -o ../GNU_toolchain/Simulation/decoder1to2withEnable.executable decoder1to2withEnable_tb.v

simulation:
	Simulation/decoder1to2withEnable.executable
wave:
	gtkwave Simulation/decoder1to2withEnable.vcd
