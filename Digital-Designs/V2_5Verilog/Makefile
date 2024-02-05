inverter-build:
# -Wno-COMBDLY supresses warnings that appear when using non-blocking
# assignments in combinational logic blocks.
# See V3Error.h and V3Error.cpp for more details and
# justification on why this is safe.
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-Width \
		--top-module top \
                top.sv dut_tb.cpp \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

inverter-test: inverter-build
	./dut_tb/dut_tb

inverter-lint:
	verilator -Wall --lint-only top.sv