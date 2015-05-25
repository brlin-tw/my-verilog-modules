#Makefile of decoderDisplay7Segment
  #author:Vdragon <Vdragon.Taiwan@gmail.com>
  #this file is licensed under LGPL 3 or later

NAME_MODULE = decoderDisplay7Segment
DIRECTORY_CURRENT_WORKING = $(shell pwd)
DIRECTORY_CURRENT_BUILD_SOLUTION = ${DIRECTORY_CURRENT_WORKING}
DIRECTORY_PROJECT_ROOT = $(shell pwd)/../..
DIRECTORY_SOURCE_CODE = ${DIRECTORY_PROJECT_ROOT}/Source code
DIRECTORY_SIMULATION = ${DIRECTORY_CURRENT_BUILD_SOLUTION}/Simulation
PREFIX_SIMULATION_EXECUTABLE = .simulation.executable

build:
	mkdir --parents Simulation
	cd "${DIRECTORY_SOURCE_CODE}/${NAME_MODULE}"; \
	iverilog -o "${DIRECTORY_SIMULATION}/${NAME_MODULE}_testbench${PREFIX_SIMULATION_EXECUTABLE}" "${NAME_MODULE}_testbench.v"

simulate:
	Simulation/${NAME_MODULE}_testbench${PREFIX_SIMULATION_EXECUTABLE}

view_waveform:
	gtkwave Simulation/decoderDisplay7Segment_tb.vcd
