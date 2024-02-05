#include <cstdint>
#include <iostream>
#include <array>

#include <verilated.h>
#include "verilated_vcd_c.h"


#include <Vswitch.h>

static vluint64_t time_stamp = 0;

double sc_time_stamp() {
    return static_cast<double>(time_stamp);
}

class DutTb {

public:
    DutTb() 
        : dut(new Vswitch)
    {
        dut->clk = 0;
        enableTrace();
    }

    void enableTrace() {
        vtrace = new VerilatedVcdC();
        dut->trace(vtrace, 0);
        vtrace->open("sim.vcd");
    }

    ~DutTb() {
        dut->final();

        vtrace->flush();
        vtrace->close();
        delete dut;
        delete vtrace;
    }

    void half_tick() {
        vtrace->dump(time_stamp);
        dut->clk = !dut->clk;
        dut->eval();        

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

        dut->rst = 0;
        dut->eval();
        half_tick();
        print();
        
        tick();
        dut->rst = 1;
        tick();
    }

    void print() {
        // std::printf("# Time=%0ld,Z=%0d\n",
        //     time_stamp,
        //     dut->z);	
        std::printf("# Time=%0ld",
            time_stamp);	
    }

    void lab2TestCase() {


        dut->a = 0;
        dut->b = 0;

        dut->eval();
        tick();
        print();

        dut->a = 1;
        dut->b = 0;

        dut->eval();
        tick();
        print();

        dut->a = 0;
        dut->b = 1;

        dut->eval();
        tick();
        print();

        dut->a = 1;
        dut->b = 1;

        dut->eval();
        tick();
        print();
    }



private:
    Vswitch* dut;
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


