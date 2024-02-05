#include <cstdint>
#include <iostream>
#include <array>

#include <verilated.h>
#include "verilated_vcd_c.h"


#include <Vtop.h>

static vluint64_t time_stamp = 0;

double sc_time_stamp() {
    return static_cast<double>(time_stamp);
}

class DutTb {

public:
    DutTb() 
        : counter(new Vtop)
    {
        counter->clk = 0;
        enableTrace();
    }

    void enableTrace() {
        vtrace = new VerilatedVcdC();
        counter->trace(vtrace, 0);
        vtrace->open("sim.vcd");
    }

    ~DutTb() {
        counter->final();

        vtrace->flush();
        vtrace->close();
        delete counter;
        delete vtrace;
    }

    void half_tick() {
        vtrace->dump(time_stamp);
        counter->clk = !counter->clk;
        counter->eval();        

        time_stamp++;
    }

    void tick() {
        // Toggle clock edge once
        half_tick();

        // Repeat
        half_tick();
        print();
    }

    void initial() {

        counter->rst = 1;
        counter->eval();
        half_tick();
        print();
        
        tick();
        counter->rst = 0;
        tick();
    }

    void print() {
        std::printf("# Time=%0ld,Z=%0d\n",
            time_stamp,
            counter->z);	
        
    }

    void lab2TestCase() {
	counter->a = 0;
	counter->b = 0;

        counter->eval();
        tick();
        print();

	counter->a = 1;
	counter->b = 0;

        counter->eval();
        tick();
        print();

	counter->a = 0;
	counter->b = 1;

        counter->eval();
        tick();
        print();

	counter->a = 1;
	counter->b = 1;

        counter->eval();
        tick();
        print();
    }



private:
    Vtop* counter;
    VerilatedVcdC* vtrace;
};


int main(int argc, char* argv[]) {

    Verilated::traceEverOn(true);
    Verilated::commandArgs(argc, argv);

    DutTb tb;

    // PolyTb has an 'initial' method
    // The method is analagous to initial blocks in  (System)Verilog testbench;
    // the module being tested (device-under-test or DUT) may require a reset sequence
    // and setting up other signals - initial block work well with those

    tb.initial();
    

    // The testbench will assert specific tests cases with different time stamps
    tb.lab2TestCase();

}


